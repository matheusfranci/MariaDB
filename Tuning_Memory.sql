-- É pertinente tunar os parâmetros innodb_buffer_pool_size e o innodb_log_file_size
SHOW VARIABLES LIKE 'innodb_buffer_pool_size';
SHOW VARIABLES LIKE 'innodb_log_file_size';

-- O procedimento é similar ao anterior, edite o my.cnf
[mysqld]
innodb_buffer_pool_size = 2G
innodb_log_file_size = 256M

-- Reinicie o mariadb
sudo systemctl restart mariadb
