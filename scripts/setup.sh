#!/bin/bash

echo "Building ipfs external docker volume"
docker volume create --name=ipfs-data-volume

echo "Initializing docker containers"
docker-compose up -d 
