#!/bin/bash

DOTFILES="${HOME}/dotfiles"

# create symbolic link of dotfiles in home directory.
for file in ${DOTFILES}/bin/.??*; do
    ln -s ${file} ${HOME}/${file##*/}
done

# load configurations
source ${HOME}/.zshrc
