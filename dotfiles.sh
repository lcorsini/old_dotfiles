#!/bin/bash

# Clone the dotfiles repository first, in ~/dotfiles/
git clone https://github.com/lcorsini/dotfiles.git

### VIM 
cp ~/dotfiles/vim/.vimrc ~/.vimrc
# Order Matters, ZenBurn clones into root .vim/
echo "Install Zenburn"
git clone https://github.com/jnurmine/Zenburn.git ~/.vim/
echo "Install Vundle"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
