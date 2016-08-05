#!/usr/bin/env bash

packer build -var compression_level=9 -var ram=512 -var cpus=2 -var disk_size=20480gc -m "" -only=virtualbox-iso ubuntu-16.04.01-amd64.json
