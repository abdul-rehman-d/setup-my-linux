#!/bin/bash

##################
# CHECK FOR SUDO #
##################
if [ -z "${SUDO_USER}" ]; then
    echo "script can only be run by a sudo user"
    exit 1
fi

##################
# UPDATE SYSTEM  #
##################
sudo apt update && sudo apt upgrade -y

##################
# INSTALL "GIT"  #
##################
sudo apt install git -y

##################
# INSTALL "ZSH"  #
##################
sudo ./subscripts/install_zsh.sh

####################
# INSTALL "DOCKER" #
####################
sudo ./subscripts/install_docker.sh

#########################
# INSTALL MISC SOFTWARE #
#########################
sudo apt install -y $(cat misc_software_list.txt | tr '\n' ' ')

##################
# INSTALL "TMUX" #
##################
sudo apt install tmux

####################
# REBOOTING SYSTEM #
####################
sudo reboot
