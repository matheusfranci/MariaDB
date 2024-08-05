-- Verificando o valor atual do max_connections
SHOW VARIABLES LIKE 'max_connections';

-- Saída
+-----------------+-------+
| Variable_name   | Value |
+-----------------+-------+
| max_connections | 151   |
+-----------------+-------+
1 row in set (0.001 sec)

-- Alterando
vi my.cnf
[mysqld]
max_connections = 200

-- Reinicie o CLUSTER
sudo systemctl restart mariadb
