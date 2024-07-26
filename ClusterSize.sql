SELECT SUM(size_mb) AS total_size_mb
FROM (
    SELECT table_schema AS database_name,
           SUM(data_length + index_length) / 1024 / 1024 AS size_mb
    FROM information_schema.tables
    GROUP BY table_schema
) AS ClusterSize;
