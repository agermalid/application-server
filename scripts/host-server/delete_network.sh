#!/bin/bash
echo "# Delete networks"
docker network rm frontend_net
docker network rm backend_net
echo "# Complete"
exit 0