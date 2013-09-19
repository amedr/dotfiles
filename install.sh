#!/bin/sh

echo "Fetching necessary Git submodules"
git submodule init
git submodule update

echo "Creating symlink for bash_profile"
ln -s "$PWD/bash_profile" "$HOME/.bash_profile"

echo "Creating symlink for vimrc"
ln -s "$PWD/vimrc" "$HOME/.vimrc"

echo "Creating symlink for vim"
ln -s "$PWD/vim" "$HOME/.vim"

echo "Creating symlink for slate.js"
ln -s "$PWD/slate.js" "$HOME/.slate.js"

echo "Done!"
