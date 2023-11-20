#!/bin/bash

# Create MySQL container

mysql_db=$(docker run -d \
 --name db \
 --restart always \
 --network deimos_network \
  -e MYSQL_ROOT_PASSWORD=fengshwaed \
  -e MYSQL_DATABASE=dev_to \
  -e MYSQL_ROOT_USER=sips \
  -e MYSQL_PASSWORD=fengshui \
  -v /Users/siphokazidolo/Desktop/Siphokazi-SRE-Internship-2023/Module\2/mysql_data:/var/lib/mysql \
  -p 3308:3306 \
  mysql:latest)

echo "MySQL container ID: $mysql_db"