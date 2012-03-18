#!/bin/sh

echo "Creating symlink for bash_profile"
ln -s "$PWD/bash_profile" "$HOME/.bash_profile"

echo "Creating symlink for vimrc.before"
ln -s "$PWD/vimrc.before" "$HOME/.vimrc.before"

echo "Creating symlink for vimrc.after"
ln -s "$PWD/vimrc.after" "$HOME/.vimrc.after"

echo "Done!"
