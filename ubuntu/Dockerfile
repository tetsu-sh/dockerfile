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
RUN apt-get install zsh
RUN apt-get install iputils-ping net-tools dnsutils
RUN chsh -s $(which zsh)
# Rustのインストール
RUN $ curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
RUN apt-get install python3
RUN apt-get install git
# pyenv など
RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv && cd ~/.pyenv && src/configure && make -C src
# poetry
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

# install broot
# navi
# skim
# zoxide
RUN curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# docker install
RUN apt-get install -y \
    ca-certificates \
    gnupg \
    lsb-release && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
  echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null && \
  apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

CMD ["/bin/bash"]
# CMD ["/usr/bin/zsh" or $SHELL]