#!/bin/bash
echo "Docker building phytotracker3..."

# Make sure we aren't running...
echo "Bringing Docker down..."
docker-compose down

# Pull the latest
#echo "Pulling the latest from GitHub..."
#git pull

docker build -t phytotracker3_dev .

# Up time
echo "DEVELOPMENT MACBOOK ENVIRONMENT ENABLED!"
export UID=${UID} 
export GID=${GID} 
docker-compose -f dev-docker-compose.yml up -d