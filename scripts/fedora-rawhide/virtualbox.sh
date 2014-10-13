#!/bin/bash

set -e
set -x

sudo dnf -y install bzip2
sudo dnf -y install dkms
sudo dnf -y install kernel-devel
sudo dnf -y install make

# Uncomment this if you want to install Guest Additions with support for X
#sudo dnf -y install xorg-x11-server-Xorg

sudo systemctl start dkms
sudo systemctl enable dkms

sudo mount -o loop ~/VBoxGuestAdditions.iso /mnt/
sudo /mnt/VBoxLinuxAdditions.run || :
sudo umount /mnt/
rm -f ~/VBoxGuestAdditions.iso