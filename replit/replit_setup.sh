#!/bin/bash


echo "Yo"

if [~/.vimrc]
then
  rm .vimrc
fi


# Install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# Clone vimrc and make a symbolic link
ln -s ~/vimrc/replit/.vimrc ~/.vimrc

vim -c PlugInstall 
