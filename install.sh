#!/bin/bash

if [ "$1" == "-h" ]; then
    echo usage: ./install_all.sh [pip args]
fi

# Install packages specified in ./pypackages
pip install $* --requirement=packages

# Install each submodule to the current environment.
git submodule init
git submodule update
git submodule foreach "pip install $* ."

