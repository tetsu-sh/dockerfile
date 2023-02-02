- sudo apt update
- sudo apt install openssh-server

- ssh key host changed erro
  - ssh -R [host]

apt-get update
apt-get install -y vim build-essential man strace sysstat wget curl
apt-get install -y zsh
apt-get install -y iputils-ping net-tools dnsutils
chsh -s $(which zsh)

# Rust のインストール

curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
apt-get install python3
apt-get install -y git
git clone https://github.com/tetsu-sh/dotfiles.git
. ./dotfiles/dotfilesLink.sh

# pyenv など

git clone https://github.com/pyenv/pyenv.git ~/.pyenv && cd ~/.pyenv && src/configure && make -C src

# poetry

curl -sSL https://install.python-poetry.org | python3 -

# zoxide

RUN curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# docker

sudo apt-get update
sudo apt-get install \
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

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# python

sudo apt install python3-dev build-essential default-libmysqlclient-dev
sudo apt install libncursesw5-dev libgdbm-dev libc6-dev libctypes-ocaml-dev zlib1g-dev libsqlite3-dev tk-dev
sudo apt install libssl1.1 libssl1.1=1.1.1f-1ubuntu2 libssl-dev libmysqlclient-dev
sudo apt install librust-libsodium-sys-dev
sudo apt-get install bzip2 libffi-dev lzma lzma-dev libreadline-dev libbz2-dev liblzma-dev

git config --global core.editor vim

### .ssh
