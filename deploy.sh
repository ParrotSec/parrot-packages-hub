#!/bin/bash

# Clone the two repositories
git clone https://github.com/danterolle/packages-filter.git
git clone https://github.com/danterolle/packages-api.git

# Build the Go applications
cd packages-filter/ && go build -o packages-filter
cd ../packages-api/ && go build -o packages-api

# Start docker-compose
docker-compose up