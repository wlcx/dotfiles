#!/usr/bin/env sh

# This script prints a noisy warning if the dotfiles repo has uncommited changes.
# Best used at login.

if ! git -C $HOME/.dotfiles diff --quiet --ignore-submodules HEAD ; then
    echo "\033[1;31mOI! Commit your dotfiles!\033[0m"
fi
