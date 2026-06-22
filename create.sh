#!/bin/sh

read -p "Enter server directory name: " serverDir

if [ -f $serverDir/docker-compose.yaml ]; then
    echo "Error: $serverDir already exists."
    exit 1
fi


echo "Creating server..."
mkdir $serverDir
mkdir $serverDir/data
cp ./docker-files/docker-compose.yaml ./$serverDir/docker-compose.yaml

