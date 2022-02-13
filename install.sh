#!/bin/bash

install_deps() {
	nvm use 12.18.2
	npm install -g npm-groovy-lint
	pip3 install --upgrade autopep8
}

cat ./keyboard.ascii
echo -e "		      configuing nvim \n"
DIR_NVIM="$HOME/.config/nvim"
DIR_LSPS="$HOME/.config/nvim/lsp"
DIR_COLORS="$HOME/.config/nvim/colors"

which nvim || curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage &&
chmod u+x nvim.appimage

ln -T ./nvim.appimage /usr/bin/nvim

echo "checking for config folders...creating them if you let me"
mkdir -p $DIR_NVIM
mkdir -p $DIR_LSPS
mkdir -p $DIR_COLORS 

cp init.vim $DIR_NVIM/
source $DIR_NVIM/"${1:-init.vim}"

echo "download plugin manager (plug)"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "installing your favourite lsps"
curl -fLO https://github.com/elixir-lsp/elixir-ls/releases/latest/download/elixir-ls.zip
unzip elixir-ls.zip -d $DIR_LSPS/elixir-ls
chmod +x $DIR_LSPS/elixir-ls/language_server.sh

echo "grabbing iceberg colorscheme"
curl -o $DIR_COLORS/iceberg.vim https://raw.githubusercontent.com/cocopon/iceberg.vim/master/colors/iceberg.vim

echo "cleaning up -- run :PlugInstall if necessary"
rm ./elixir-ls.zip
