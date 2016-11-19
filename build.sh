#!/bin/bash

PREFIX="kodbasen"
VERSION="jdk-8u111-b14"
IMAGE="java-jdk-arm"

docker build -t $PREFIX/$IMAGE:$VERSION .
docker tag $PREFIX/$IMAGE:$VERSION $PREFIX/$IMAGE:latest

docker push $PREFIX/$IMAGE:$VERSION
docker push $PREFIX/$IMAGE:latest
