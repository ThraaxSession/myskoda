#!/usr/bin/env bash

# Setup constants
IMAGENAME=myskoda-dev:latest

# Build the docker image
docker build -t $IMAGENAME .

# Build the project
#docker run -v $1:/development/project