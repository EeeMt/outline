#!/bin/sh

# version="0.70.2"
version=$RELEASE_VERSION
docker build --pull --rm -f "Dockerfile.base" -t eeemt/outline-base:latest "." && \
docker build --rm -f "Dockerfile" -t eeemt/outline:latest -t eeemt/outline:$version "." && \
docker push eeemt/outline:$version && \
docker push eeemt/outline:latest
docker image rm eeemt/outline:$version eeemt/outline:latest eeemt/outline-base:latest