#!/bin/bash
current_dir=`dirname ${BASH_SOURCE[0]}`
cd $current_dir
cd ..
cd ..
echo "# Create stand"
docker-compose restart
echo "# Complete"
exit 0