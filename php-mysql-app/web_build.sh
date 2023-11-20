#!/bin/bash

# Get the current working directory
#current_dir=$(pwd)

# Absolute path to the .env file
#env_file="$current_dir/.env"

# Create web container
my_web=$(docker run -d \
 --name my-web \
 --network deimos_network \
 -v .:/var/www/html \
 -p 8070:80 \
  --env-file .env \
   web)
#   -e MYSQL_ROOT_PASSWORD=fengshwaed \
#   -e MYSQL_DATABASE=dev_to \
#   -e MYSQL_ROOT_USER=sips \
#   -e MYSQL_PASSWORD=fengshui \


 