#!/bin/bash
echo "Do not run. ctrl-c"
read -n 1

## xorg
cp xorg/* $HOME/

## i3
mkdir .i3/
cp i3/* $HOME/.i3/

## zsh
# zshrc
cp zsh/.zshrc $HOME/

# oh-my-zsh
# Not using -p to actually output an error if the dir doesn't exist
mkdir $HOME/.oh-my-zsh
cp zsh/oh-my-zsh/* $HOME/.oh-my-zsh


## Git
cp git/.git* $HOME

## Tmux
cp tmux/.tmux.conf $HOME

# Tmuxinator
mkdir -p $HOME/.tmuxinator/
cp tmux/tmuxinator/* $HOME/.tmuxinator/

## vim

cp vim/.vimrc $HOME

## Symlinking
# Desktop files
ln -s $HOME/lib/desktop-files/* /usr/share/applications/


## Source folder
mkdir -p $HOME/src

# Go folders
mkdir -p $HOME/src/golang/src
mkdir -p $HOME/src/golang/pkg
mkdir -p $HOME/src/golang/bin

## Pictures
mkdir -p Pictures/wallpapers
# For feh background
ln -s favourite_wallpaper.png background.png
