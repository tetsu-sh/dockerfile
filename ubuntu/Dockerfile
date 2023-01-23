FROM ubuntu:22.04

ARG USERNAME=tetsu-sh
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000

# COPY ["~/.zshrc","~/.vscode" , "~/.zsh_profile","~/.zsh_history"]
# COPY /ssh/ .ssh/
# vscode-extentions



RUN apt-get update
RUN apt-get install -y vim build-essential man strace sysstat wget curl
RUN apt-get install -y zsh
RUN apt-get install -y iputils-ping net-tools dnsutils
RUN chsh -s $(which zsh)
# Rustのインストール
RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
RUN apt-get install python3
RUN apt-get install -y git
RUN git clone https://github.com/tetsu-sh/dotfiles.git
RUN . ./dotfiles/dotfilesLink.sh
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