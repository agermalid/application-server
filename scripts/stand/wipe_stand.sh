#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR
cd ..
cd ..
echo "# Wipe stand"
# Stop all containers
docker-compose down
# Delete all volumes
docker volume rm $(docker volume ls -q)
# Remove any anonymous volumes attached to containers
docker-compose rm -fvs
echo "# Complete"
exit 0