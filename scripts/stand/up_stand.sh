#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR
cd ..
cd ..
echo "Create stand"
docker-compose up -d
echo "Setup postgresql-server"
cd $SCRIPT_DIR/scripts/postgresql/
bash setup-postgresql.sh
echo "Complete"
exit 0