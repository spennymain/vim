#!/bin/bash

install_deps() {
	nvm use 12.18.2
	npm install -g npm-groovy-lint
	pip3 install --upgrade autopep8
}

cat ./keyboard.ascii
echo -e "		      configuing nvim \n"
DIR_NVIM="$HOME/.config/nvim"

sudo apt-get install neovim

echo "folder not present...creating it if you let me"
mkdir -p $DIR_NVIM

cp init.vim coc-settings.json $DIR_NVIM/
source $DIR_NVIM/init.vim
nvim -c ":normal PlugInstall"
# head inside nvim to configure % 

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
