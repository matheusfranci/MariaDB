-- Verificando os parâmetros de verificação de consistência:
SHOW VARIABLES LIKE 'foreign_key_checks';
SHOW VARIABLES LIKE 'unique_checks';

-- Alterando temporariamente para a sessão atual:
SET foreign_key_checks = 0;
SET unique_checks = 0;

-- Alterando definitivamente para todas as sessões:
-- edit o my.cnf
[mysqld]
foreign_key_checks = 0
unique_checks = 0

-- Depois de alterar reinicie o mariadb para persistir
sudo systemctl restart mariadb

-- Também é pertinente tunar os parâmetros innodb_buffer_pool_size e o innodb_log_file_size
-- O procedimento é similar ao anterior, edite o my.cnf
[mysqld]
innodb_buffer_pool_size = 2G
innodb_log_file_size = 256M

-- Reinicie o mariadb
sudo systemctl restart mariadb
