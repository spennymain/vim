#!/bin/bash

install_deps() {
	nvm use 12.18.2
	npm install -g npm-groovy-lint
	pip3 install --upgrade autopep8
}

cat ./keyboard.ascii
echo -e "		      configuing nvim \n"
DIR_NVIM="$HOME/.config/nvim"


if [[ -e $DIR_NVIM ]]; then
	echo "jumping to $DIR_NVIM"
	if [[ ! -e $DIR_NVIM/kotlin-language-server ]]; then 
		git clone https://github.com/fwcd/kotlin-language-server.git && cd ./kotlin-language-server && ./gradlew :server:installDist
		install_deps
	fi
else
	echo "folder not present...creating it if you let me"
	mkdir -p $DIR_NVIM
fi
