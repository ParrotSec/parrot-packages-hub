#!/bin/bash

username=danterolle

# Clone the two repositories
git clone https://github.com/$username/packages-filter.git
git clone https://github.com/$username/packages-api.git

# Build the Go applications
cd packages-filter/ && go build -o packages-filter
cd ../packages-api/ && go build -o packages-api

# Start docker-compose
docker-compose up