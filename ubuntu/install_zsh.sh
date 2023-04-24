#!/usr/bin/bash

set -e
set -x

sudo apt update
sudo apt install -y zsh curl
sudo usermod -s /bin/zsh $(whoami)
# need logout
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
