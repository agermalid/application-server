#!/bin/bash
echo "# Creating networks..."
docker network create -d bridge \
--subnet=172.16.238.0/24 \
--gateway=172.16.238.1 \
--opt "com.docker.network.enable_ipv6"="false" \
frontend_net 
docker network create --internal -d bridge \
--subnet=172.16.239.0/24 \
--gateway=172.16.239.1 \
--opt "com.docker.network.enable_ipv6"="false" \
backend_net
echo "# Networks created"
exit 0