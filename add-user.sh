#!/bin/bash

set -e 
set -x 

# Check for the user in the environment variable.
if [[ -z "${RUN_USER}" ]]; then
  RUN_USER=ubuntu
fi

HOME=/home/$RUN_USER

# Add the user to the system.
useradd -m $RUN_USER

# Make the user able to sudo.
echo "${RUN_USER} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/snapcraft-users
# Change the owner on all the files in $HOME.
chown -R $RUN_USER:$RUN_USER $HOME
# Editor settings.
touch $HOME/.vimrc
echo "alias vim=vi" >> /home/$RUN_USER/.bashrc
