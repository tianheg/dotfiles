#!/usr/bin/env bash

if [ ! -e "$1" ]; then
  echo "Error: $1 does not exist"
  exit 1
fi

if [ -h "$1" ]; then
  echo "Error: $1 is a symbolic link"
  exit 1
fi

if [ -d "$1" ]; then
  echo "Error: $1 is a directory"
  exit 1
fi

if [ -f "$1" ]; then
  if [ -f ~/dotfiles/$(basename "$1") ]; then
    cp "$1" ~/dotfiles/$(basename "$1")
    echo "File $1 has been backed up to ~/dotfiles/$(basename "$1")"
  else
    cp "$1" ~/dotfiles
    echo "File $1 has been backed up to ~/dotfiles"
  fi
fi

# write a shell script that will backup input path file to ~/dotfiles folder
# if the file already exists in the ~/dotfiles folder, it will be overwritten
# if the file does not exist in the ~/dotfiles folder, it will be created
# if the file does not exist in the input path, it will print an error message
# if the input path is a directory, it will print an error message
# if the input path is a symbolic link, it will print an error message
# if the input path is a file, it will be backed up to ~/dotfiles folder

# check if the input path is a file
