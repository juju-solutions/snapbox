#!/bin/bash
set -e

if [[ -z "${RUN_USER}" ]]; then
  RUN_USER=ubuntu
fi 
export HOME=/home/$RUN_USER
sudo -u $RUN_USER /bin/bash
