SELECT CONCAT('ANALYZE TABLE ', GROUP_CONCAT(table_name SEPARATOR '; ANALYZE TABLE '), ';') AS analyze_commands
FROM information_schema.tables
WHERE table_schema = 'zabbix'\G
