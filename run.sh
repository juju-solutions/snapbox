#!/bin/bash
set -e

if [[ -z "${RUN_USER}" ]]; then
  RUN_USER=ubuntu
fi 
# Change the owner of the volume mount directory.
chown -R $RUN_USER:$RUN_USER /home/$RUN_USER/snap
# Export the $HOME
export HOME=/home/$RUN_USER
# Switch user and run bash.
sudo -u $RUN_USER /bin/bash
