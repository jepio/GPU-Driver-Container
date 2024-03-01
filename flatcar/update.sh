#!/bin/bash

set -x

docker rm -f nvidia-driver
docker run -it --privileged --pid=host \
    -v /run/nvidia:/run/nvidia:shared \
    -v /var/log:/var/log \
    -v /dev/log:/dev/log \
    -v /etc/os-release:/host-etc/os-release \
    --name nvidia-driver \
    nvidia/nvidia-driver-flatcar:latest update
