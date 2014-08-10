CREATE DATABASE data_interval_digest;
CREATE DATABASE data_interval_digest_test;

CREATE DATABASE chips;
CREATE DATABASE chips_test;

CREATE USER 'poseur'@'%' IDENTIFIED BY 'poseur';

GRANT ALL ON data_interval_digest.* TO 'poseur'@'%';
GRANT ALL ON data_interval_digest_test.* TO 'poseur'@'%';

GRANT ALL ON chips.* TO 'poseur'@'%';
GRANT ALL ON chips_test.* TO 'poseur'@'%';
