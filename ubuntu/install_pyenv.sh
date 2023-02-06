#!/usr/bin/bash 

set -e
set -x

PYTHON_VERSION=3.9.9
VIRTUAL_ENV=env399
# SHRC=bashrc
SHRC=zshrc

apt install -fy openssl git

git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >>~/.$SHRC
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >>~/.$SHRC
echo 'eval "$(pyenv init -)"' >>~/.$SHRC
exec $SHELL
source ~/.$SHRC

pyenv install -v $PYTHON_VERSION

git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >>~/.$SHRC
source ~/.$SHRC

pyenv virtualenv $PYTHON_VERSION $VIRTUAL_ENV
pyenv activate $VIRTUAL_ENV
