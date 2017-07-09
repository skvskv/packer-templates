#!/bin/bash

set -e
set -x

sudo apt-get -y install avahi-daemon
sudo apt-get -y install libnss-mdns
