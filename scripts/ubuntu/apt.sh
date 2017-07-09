#!/bin/bash

set -e
set -x

# In Ubuntu 12.04, the contents of /var/lib/apt/lists are corrupt
ubuntu_version=$(lsb_release -r | awk '{ print $2 }')
if [ "$ubuntu_version" == '12.04' ]; then
  sudo rm -rf /var/lib/apt/lists
fi

sudo apt-get update


sudo apt-get -y install apt-utils
sudo apt-get -y install apt-show-*
sudo apt-get -y install apt-file
sudo apt-file update
