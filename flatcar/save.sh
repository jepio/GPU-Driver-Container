#!/bin/bash

set -x

DRIVER_VERSION=535.161.07
. /etc/os-release

docker commit \
    --change='ENTRYPOINT ["nvidia-driver", "init"]' \
    nvidia-driver nvidia/nvidia-flatcar-${VERSION_ID}:${DRIVER_VERSION}
