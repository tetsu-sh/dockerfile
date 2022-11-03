- docker outside docker
- docker run -it -d -v /var/run/docker.sock:/var/run/docker.sock -name myubuntu20 
- docker restart -v /var/run/docker.sock:/var/run/docker/sock -it ubuntu20

- docker in docker
- docker run --privileged --name dind -d docker:dind


- docker install in container
- curl -fsSL https://download.docker.com/linux/static/stable/x86_64/docker-20.10.8.tgz | tar -xzC /usr/local/bin --strip=1 docker/docker