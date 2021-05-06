#!/usr/bin/bash

#Constants
base_folder=${PWD##*/}
image_name="${base_folder}_app_env"

#build and up with docker compose
if [ $(docker images | grep -i $image_name | wc -l) == "0" ]; then
docker compose build
fi
docker compose up -d