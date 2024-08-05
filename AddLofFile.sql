-- Verificando o errorlog
SHOW VARIABLES LIKE 'log_error';

-- Saída
+---------------+-------+
| Variable_name | Value |
+---------------+-------+
| log_error     |       |
+---------------+-------+
1 row in set (0.001 sec)

-- Adição:
vi my.cnf

-- Adicione os parâmetro abaixo
[mysqld]
log_error = /var/log/mysql/error.log

-- Se necessário crie os diretórios e faça o chown para mysql:mysql

-- Criando o arquivo de log:
sudo touch /var/log/mysql/error.log

-- Permissão para o usuário e grupo
sudo chown mysql:mysql /var/log/mysql/error.log

-- Restart do serviço do mariadb
sudo systemctl restart mariadb
