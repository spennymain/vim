#!/bin/bash

install_deps() {
	nvm use 12.18.2
	npm install -g npm-groovy-lint
	pip3 install --upgrade autopep8
}

cat ./keyboard.ascii
echo -e "		      configuing nvim \n"
DIR_NVIM="$HOME/.config/nvim"

which nvim || curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage &&
chmod u+x nvim.appimage &&
./nvim.appimage

ln -T ./nvim.appimage /usr/bin/nvim


echo "folder not present...creating it if you let me"
mkdir -p $DIR_NVIM
cp init.vim $DIR_NVIM/
source $DIR_NVIM/"${1:-init.vim}"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

