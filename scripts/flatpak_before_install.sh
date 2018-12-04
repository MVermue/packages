#!/bin/bash --

set -e

cp -rf "${ROOT_PATH}"/flatpak "${SRC_PATH}"
docker run --name flatpak-builder -v $SRC_PATH:$SRC_PATH -w $SRC_PATH -td $FLATPAK_DOCKER_REPO
