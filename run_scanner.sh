#!/bin/bash

export IMAGE_NAME="quiner/docker_scanner:$SCANNER_VERSION"
echo "Using image: $IMAGE_NAME"

docker pull "$IMAGE_NAME"
docker run -v "$SCAN_DIR"/:/scan_dir:ro -v /var/run/docker.sock:/var/run/docker.sock --env scan_dir=/scan_dir "$IMAGE_NAME"
