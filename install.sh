#!/bin/bash

# Symlink configs to home folder
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.vimrc.plug ~/.vimrc.plug
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

# Install zgen
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
