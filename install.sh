#!/bin/bash
#soft link for vim

#PACAKGE=("texlive" "vim" "subversion" "openssh-server")
TARGET=(".vimrc" ".ssh")

for t in ${TARGET[@]}; do
    rm -rf $HOME/$t
    ln -s $PWD/$t $HOME/$t
    echo $t" is changed"
done

sudo apt-get install vim subversion

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
vim +BundleInstall +qall
