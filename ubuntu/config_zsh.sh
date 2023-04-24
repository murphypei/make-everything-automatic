#!/usr/bin/zsh 

set -e
set -x

#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
#git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
#git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
#git clone https://github.com/paulirish/git-open.git ~/.oh-my-zsh/custom/plugins/git-open
sudo apt install -y autojump

# set oh-my-zsh
sed -i "s/robbyrussell/steeef/g" ~/.zshrc
sed -i "3iexport term=xterm-256color" ~/.zshrc
sed -i "s/#\ disable_auto_update/disable_auto_update/g" ~/.zshrc
sed -i "s/#\ completion_waiting_dots/completion_waiting_dots/g" ~/.zshrc
sed -i "s/plugins=(git)/plugins=(git\ autojump\ zsh-autosuggestions\ zsh-syntax-highlighting\ git-open)/g" ~/.zshrc
echo "alias rsynca=\"rsync -avzp\"" >>~/.zshrc
echo "alias py_http=\"python -m simplehttpserver 8001\"" >>~/.zshrc
echo "alias valgrinda=\"valgrind --tool=memcheck --leak-check=full --show-leak-kinds=all\"" >>~/.zshrc
source ~/.zshrc
