#!/usr/bin/bash

set -x

PYTHON_VERSION=3.9.9
VIRTUAL_ENV=env399
# SHRC=bashrc
SHRC=zshrc

sudo apt update
sudo apt install -fy openssl git

git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >>~/.$SHRC
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >>~/.$SHRC
echo 'eval "$(pyenv init -)"' >>~/.$SHRC
exec $SHELL
source ~/.$SHRC

