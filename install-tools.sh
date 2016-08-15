#!/bin/bash

set -e

apt-get update -qq -y 
apt-get install -y \
    build-essential \
    bzr \
    git \
    openssh-client \
    snapcraft \
    snapd \
    unzip
