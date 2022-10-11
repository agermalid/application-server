#!/bin/bash
# Example PGTune config for VM: 8 vCPU, 24 GB RAM and 3000 max connections [https://pgtune.leopard.in.ua/]
# ALTER SYSTEM writes the given parameter setting to the postgresql.auto.conf file, which is read in addition to postgresql.conf
echo "Setup postgresql-server"
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET max_connections = "3000";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET shared_buffers = "6GB";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET effective_cache_size = "18GB";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET maintenance_work_mem = "1536MB";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET checkpoint_completion_target = "0.9";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET wal_buffers = "16MB";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET default_statistics_target = "100";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET random_page_cost = "4";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET effective_io_concurrency = "2";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET work_mem = "524kB";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET min_wal_size = "1GB";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET max_wal_size = "4GB";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET max_worker_processes = "8";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET max_parallel_workers_per_gather = "4";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET max_parallel_workers = "8";'
docker exec -u postgres postgresql-server psql -c 'ALTER SYSTEM SET max_parallel_maintenance_workers = "4";'
echo "Restart postgresql-server docker container"
current_dir=`dirname ${BASH_SOURCE[0]}`
cd $current_dir
cd ..
cd ..
docker-compose restart postgresql-server
echo "Check first and last parameter"
sleep 10s
docker exec -u postgres postgresql-server psql -c 'SHOW max_connections;'
docker exec -u postgres postgresql-server psql -c 'SHOW max_parallel_maintenance_workers;'