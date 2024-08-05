#! /usr/bin/env bash

# if no asdf

# git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
# . "$HOME/.asdf/asdf.sh"

PYTHON_VERSION=3.12.4

asdf plugin add python

asdf install python $PYTHON_VERSION