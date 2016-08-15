#!/bin/bash

set -e 
set -x 

# Add a user
if [[ -z "${RUN_USER}" ]]; then
  RUN_USER=ubuntu
fi

HOME=/home/$RUN_USER

# Add the user
useradd -m $RUN_USER

echo "${RUN_USER} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/snapcraft-users
chown -R $RUN_USER:$RUN_USER $HOME

touch $HOME/.vimrc
echo "alias vim=vi" >> /home/$RUN_USER/.bashrc
