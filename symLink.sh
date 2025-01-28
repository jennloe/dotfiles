#!/bin/bash

#Be sure to delete/move original rc files before running!

# bash rc files had custom settings, so I did not include them yet. 

# Must use absolute paths, or will not work:
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.screenrc ~/.screenrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.inputrc ~/.inputrc
ln -sf ~/dotfiles/.tmux.conv ~/.tmux.conf

#git clone https://github.com/ginkgo-project/ssget.git
#cd ssget
#sudo make install
#echo "Installed ssget"
echo "All done!"
