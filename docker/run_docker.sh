#!/bin/bash

IMAGE_NAME=arijun/badgr:latest

xhost +

docker run -it  --rm \
  --gpus all \
  --privileged \
  --env=QT_X11_NO_MITSHM=1 \
  --env=DISPLAY=$DISPLAY \
  --volume="/etc/group:/etc/group:ro" \
  --volume="/etc/passwd:/etc/passwd:ro" \
  --volume="/etc/shadow:/etc/shadow:ro" \
  --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --volume="/dev:/dev" \
  --volume="$PWD/../:/root/badgr" \
  --net="host" \
  --name="badgr" \
  $IMAGE_NAME \
  bash
