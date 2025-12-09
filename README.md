# fdr4 Docker

Usage:
```shell
sudo xhost +local:docker
sudo docker run --rm -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -v config:/root/.config/fdr \
    -v .:/pwd \
    ghcr.io/malex14/fdr4-docker:edge
```
The current directory will be mounted to `/pwd` in the container and the configuration (including your license) will be stored in a Docker volume named `config`.

_or_

```shell
./start.sh
```