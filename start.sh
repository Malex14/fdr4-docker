#!/bin/bash

sudo xhost +local:docker
sudo docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v config:/root/.config/fdr -v .:/pwd fdr4
