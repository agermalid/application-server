#!/bin/bash
current_dir=`dirname ${BASH_SOURCE[0]}`
cd $current_dir
cd ..
cd ..
echo "Create stand"
docker-compose up -d
echo "Setup postgresql-server"
cd $current_dir/scripts/postgresql/
bash setup-postgresql.sh
echo "Complete"
exit 0