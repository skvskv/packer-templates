#!/bin/bash

set -e
set -x

sudo apt-get -y install software-properties-common
sudo apt-get -y install python-software-properties
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible
