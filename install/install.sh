#!/bin/bash

# some lib
apt-get update
apt-get install -y vim build-essential man strace sysstat wget curl
apt-get install -y zsh
apt-get install -y iputils-ping net-tools dnsutils


curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash


# git
apt-get install -y git

# git clone https://github.com/tetsu-sh/dotfiles.git
# . ./dotfiles/dotfilesLink.sh
git config --global core.editor vim


# docker

sudo apt-get update
sudo apt-get -y install \
 ca-certificates \
 curl \
 gnupg \
 lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
 "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get update

sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo usermod -g docker $USER
sudo systemctl restart docker.service


# python
apt-get install python3
git clone https://github.com/pyenv/pyenv.git ~/.pyenv && cd ~/.pyenv && src/configure && make -C src

curl -sSL https://install.python-poetry.org | python3 -

sudo apt install -y python3-dev build-essential default-libmysqlclient-dev
sudo apt install -y libncursesw5-dev libgdbm-dev libc6-dev libctypes-ocaml-dev zlib1g-dev libsqlite3-dev tk-dev
sudo apt install -y libssl1.1 libssl1.1=1.1.1f-1ubuntu2 libssl-dev libmysqlclient-dev
sudo apt install -y librust-libsodium-sys-dev
sudo apt-get install -y bzip2 libffi-dev lzma lzma-dev libreadline-dev libbz2-dev liblzma-dev

#rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh