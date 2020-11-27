#!/bin/bash

# Clean and create appconfig archive
rm -rf ./kubedirector/appconfig.tgz
cd ./kubedirector && tar czf appconfig.tgz appconfig/ && cd -
mv ./kubedirector/appconfig.tgz .

# Build and push Docker image
docker build -t dzinsouhpe/postgresql:13 .
docker push dzinsouhpe/postgresql:13

docker build -t dzinsouhpe/postgresql:latest .
docker push dzinsouhpe/postgresql:latest

# Delete temporary archive
rm -rf ./appconfig.tgz
