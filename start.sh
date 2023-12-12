#!/bin/bash
IMAGE_NAME=desafiotestesunitarios

# build Docker image
docker build -t $IMAGE_NAME .

# run docker image
docker run -it --rm $IMAGE_NAME