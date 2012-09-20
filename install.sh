#!/bin/sh

echo "Creating symlink for bash_profile"
ln -s "$PWD/bash_profile" "$HOME/.bash_profile"

echo "Creating symlink for vimrc"
ln -s "$PWD/vimrc" "$HOME/.vimrc"

echo "Creating symlink for vimrc.after"
ln -s "$PWD/vim" "$HOME/.vim"

echo "Done!"
