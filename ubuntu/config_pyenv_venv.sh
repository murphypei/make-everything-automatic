#!/usr/bin/bash

set -e
set -x

PYTHON_VERSION=3.9.9
VIRTUAL_ENV=env399
# SHRC=bashrc
SHRC=zshrc

pyenv virtualenv $PYTHON_VERSION $VIRTUAL_ENV
pyenv activate $VIRTUAL_ENV

