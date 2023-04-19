#!/usr/bin/bash

set -e
set -x

PYTHON_VERSION=3.9.9
VIRTUAL_ENV=env399
# SHRC=bashrc
SHRC=zshrc

pyenv install -v $PYTHON_VERSION

git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >>~/.$SHRC
source ~/.$SHRC

pyenv virtualenv $PYTHON_VERSION $VIRTUAL_ENV
pyenv activate $VIRTUAL_ENV

