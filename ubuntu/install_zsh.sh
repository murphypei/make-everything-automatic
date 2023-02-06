#!/usr/bin/bash 

set -e
set -x

apt update
apt install -y zsh curl
usermod -s /bin/zsh $(whoami)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
