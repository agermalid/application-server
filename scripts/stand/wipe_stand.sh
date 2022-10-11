#!/bin/bash
cd $current_dir
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