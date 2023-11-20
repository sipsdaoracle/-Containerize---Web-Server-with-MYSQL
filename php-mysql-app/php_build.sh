#!/bin/bash

# Create PHP container

my_phpmyadmin=$(docker run -d \
 --name my-phpmyadmin \
 -e PMA_HOST=db \
 --network deimos_network \
 -p 8082:80 \
 phpmyadmin:latest)

echo "PHPMyAdmin container ID: $my_phpmyadmin"