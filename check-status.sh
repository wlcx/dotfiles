#!/usr/bin/env sh

# This script prints a noisy warning if the dotfiles repo has uncommited changes.
# Best used at login.
DOTFILE_DIR=$HOME/.dotfiles

if ! git -C $DOTFILE_DIR diff --quiet --ignore-submodules HEAD ; then
    echo "`tput setaf 1`⚠️  Commit your dotfiles!`tput sgr0`"
fi

upstream=$(git -C $DOTFILE_DIR rev-parse @{u})
head=$(git -C $DOTFILE_DIR rev-parse HEAD)
if [ "$head" != "$upstream" ] ; then
    echo "`tput setaf 1`⚠️  Push your dotfiles!`tput sgr0`"
fi
