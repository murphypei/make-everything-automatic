set -e
set -x

sudo apt update
sudo apt install -y vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "set number" >>~/.vimrc
echo "set cursorcolumn" >>~/.vimrc
echo "set cursorline" >>~/.vimrc
