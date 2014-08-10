#!/bin/bash
set -e

if [ -z "$(ls -A /var/lib/mysql)" -a "${1%_safe}" = 'mysqld' ]; then
	mysql_install_db --user=mysql --datadir=/var/lib/mysql
	
	set -- "$@" --init-file="/tmp/create_databases.sql"
fi

chown -R mysql:mysql /var/lib/mysql
exec "$@"
