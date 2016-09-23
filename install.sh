#!/bin/bash
#soft link for vim

sudo apt-get install vim subversion tmux
#PACAKGE=("texlive" "vim" "subversion" "openssh-server")
TARGET=(".vimrc" ".tmux.conf")

for t in ${TARGET[@]}; do
    rm -rf $HOME/$t
    ln -s $PWD/$t $HOME/$t
    echo $t" is changed"
done

