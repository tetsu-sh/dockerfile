apt-get update
apt-get install -y vim build-essential man strace sysstat wget curl
apt-get install -y zsh
apt-get install -y iputils-ping net-tools dnsutils


RUN curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash