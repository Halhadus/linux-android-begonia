#!/bin/bash
#Don't forget install linux-packaging-snippets
export KERNEL_DIR="$HOME/droidian/kernel/xiaomi/begonia"
export PACKAGES_DIR="$HOME/droidian/packages"
mkdir -p $PACKAGES_DIR
sudo docker run --rm -v $PACKAGES_DIR:/buildd -v $KERNEL_DIR:/buildd/sources -it quay.io/droidian/build-essential:trixie-amd64 bash
