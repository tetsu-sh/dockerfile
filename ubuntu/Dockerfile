FROM ubuntu:20.04

ARG USERNAME=tetsu
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000

# COPY ["$HOME/.zshrc" , "$HOME/.zsh_profile","$HOME/.zsh_history","$HOME/.vimrc","$HOME/.bash_profile","$HOME/.bashrc"]
# COPY $HOME/workspace .workspace
# COPY $HOME/.ssh .ssh


RUN apt-get update
RUN apt-get install -y vim build-essential man strace sysstat wget curl
RUN apt-get install -y zsh
# RUN apt-get install -y iputils-ping net-tools dnsutils
RUN chsh -s $(which zsh)
# Rustのインストール
# RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
# RUN apt-get install libpq-dev
# apt-get install pkg-config

RUN apt-get install -y python3
RUN apt-get install -y git
# RUN git clone https://github.com/tetsu-sh/dotfiles.git
# RUN . ./dotfiles/dotfilesLink.sh
RUN apt install -y python3-dev build-essential default-libmysqlclient-dev
# RUN apt install -y libncursesw5-dev libgdbm-dev libc6-dev libctypes-ocaml-dev zlib1g-dev libsqlite3-dev tk-dev
RUN apt install -y libssl1.1 libssl1.1=1.1.1f-1ubuntu2 libssl-dev libmysqlclient-dev
# RUN apt install -y librust-libsodium-sys-dev
RUN apt-get install -y bzip2 libffi-dev lzma lzma-dev libreadline-dev libbz2-dev liblzma-dev

# pyenv など
RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv && cd ~/.pyenv && src/configure && make -C src
# poetry
RUN curl -sSL https://install.python-poetry.org | python3 -



# install broot
# navi
# skim
# zoxide
RUN curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# docker install
RUN apt-get install -y \
    ca-certificates \
    gnupg \
    lsb-release


RUN mkdir -p /etc/apt/keyrings 
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg 
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null 
RUN chmod a+r /etc/apt/keyrings/docker.gpg
RUN apt-get update && apt-get -y install docker-ce-cli docker-compose-plugin
CMD ["/bin/bash"]
# CMD ["/usr/bin/zsh" or $SHELL]