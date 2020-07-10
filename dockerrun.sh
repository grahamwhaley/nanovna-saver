#!/bin/bash

set -x

docker run -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd):/nanovna-saver \
    -e DISPLAY=$DISPLAY \
    -u qtuser:dialout \
    --device=/dev/ttyACM0 \
    nanovnasaver python3 /nanovna-saver/nanovna-saver.py
