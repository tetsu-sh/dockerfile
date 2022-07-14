FROM ubuntu:20.04

ARG $USER_NAME=tetsu-sh
ARG $USER_UID=1100
ARG $USER_GID=${$USER_UID}

COPY ["~/.zshrc","~/.vscode" , "~/.zsh_profile","~/.zsh_history"]
COPY /ssh/ .ssh/
# vscode-extentions

RUN apt-get update
RUN apt-get install -y vim build-essential man strace sysstat wget curl
RUN apt-get install zsh
RUN chsh -s $(which zsh)
# Rustのインストール
RUN $ curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
# poetry
# pyenv など
RUN apt-get install python3
RUN apt-get install git

CMD ["/bin/bash"]
# CMD ["/usr/bin/zsh" or $SHELL]