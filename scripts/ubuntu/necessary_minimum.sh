#!/bin/bash

set -e
set -x

PACKAGES='curl wget mc screen tmux dos2unix iputils-* inetutils-trace* socat netcat-traditional';

for package in ${PACKAGES}
do
    sudo apt-get -y install ${package}
done
