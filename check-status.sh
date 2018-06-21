#!/usr/bin/env sh

# This script prints a noisy warning if the dotfiles repo has uncommited changes.
# Best used at login.

if ! git -C $HOME/.dotfiles diff --quiet --ignore-submodules HEAD ; then
    echo "`tput setaf 1`OI! Commit your dotfiles!`tput sgr0`"
fi
