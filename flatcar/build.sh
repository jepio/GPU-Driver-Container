#!/bin/bash

set -x

DRIVER_VERSION=535.161.07
docker build --pull \
    --build-arg DRIVER_VERSION=$DRIVER_VERSION \
    --tag nvidia/nvidia-driver-flatcar:${DRIVER_VERSION} \
    --file Dockerfile .
docker tag nvidia/nvidia-driver-flatcar:${DRIVER_VERSION} nvidia/nvidia-driver-flatcar:latest
