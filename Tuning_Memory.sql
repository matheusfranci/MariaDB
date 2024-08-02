-- É pertinente tunar os parâmetros innodb_buffer_pool_size e o innodb_log_file_size
SHOW VARIABLES LIKE 'innodb_buffer_pool_size';
SHOW VARIABLES LIKE 'innodb_log_file_size';

-- Exibir em MB:
SELECT 
  VARIABLE_NAME, 
  VARIABLE_VALUE / (1024 * 1024) AS VALUE_IN_MB
FROM 
  information_schema.GLOBAL_VARIABLES
WHERE 
  VARIABLE_NAME IN ('innodb_buffer_pool_size', 'innodb_log_file_size', 'query_cache_size');

-- O procedimento é similar ao anterior, edite o my.cnf
[mysqld]
innodb_buffer_pool_size = 2G
innodb_log_file_size = 256M

-- Reinicie o mariadb
sudo systemctl restart mariadb
