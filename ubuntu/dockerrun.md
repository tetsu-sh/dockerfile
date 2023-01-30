- docker outside docker
- docker run -it -d -v /var/run/docker.sock:/var/run/docker.sock -v $HOME/.ssh:$HOME/.ssh --name myubuntu22 myubuntu22
  <!-- restartはダメ -->
  <!-- - docker restart -v /var/run/docker.sock:/var/run/docker/sock -v ~/.ssh:~/.ssh myubuntu22 -->

- docker in docker
- docker run --privileged --name dind -d docker:dind

- docker install in container
- curl -fsSL https://download.docker.com/linux/static/stable/x86_64/docker-20.10.8.tgz | tar -xzC /usr/local/bin --strip=1 docker/docker

# python install

pyenv を用いた python のインストールでこける
optional c package が足りないと言われるがとりあえずインストールはできる
apt install python3-dev build-essential default-libmysqlclient-dev
apt install libncursesw5-dev libgdbm-dev libc6-dev libctypes-ocaml-dev zlib1g-dev libsqlite3-dev tk-dev
apt install libssl1.1 libssl1.1=1.1.1f-1ubuntu2 libssl-dev libmysqlclient-dev
apt install librust-libsodium-sys-dev
sudo apt-get install bzip2 libffi-dev lzma lzma-dev libreadline-dev libbz2-dev liblzma-dev
