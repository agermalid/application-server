#!/bin/bash
export PASSWORD = "yourpassword"
docker run --rm httpd:2.4-alpine htpasswd -nbB admin "$PASSWORD" | cut -d ":" -f 2
unset PASSWORD