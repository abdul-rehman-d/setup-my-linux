#!/bin/bash

USERNAME=$1
HOME=/home/$USERNAME

sudo apt install tmux -y
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
ln -s $HOME/dotfiles/tmux $HOME/.config/tmux
