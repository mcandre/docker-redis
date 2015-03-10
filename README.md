# docker-redis - a Docker container for Redis

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-redis/

# EXAMPLE

```
$ docker pull mcandre/docker-redis

$ CONTAINER=$(docker run -d -p 6379:6379 mcandre/docker-redis)
$ docker exec $CONTAINER redis-cli set dogmoon 3
OK
$ docker exec $CONTAINER redis-cli get dogmoon
3
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker
```

# DEVELOPMENT

## Build

```
$ git clone https://github.com/mcandre/docker-redis.git
$ cd docker-redis/
$ docker build -t mcandre/docker-redis .

$ docker exec $CONTAINER redis-cli set dogmoon 3
OK
$ docker exec $CONTAINER redis-cli get dogmoon
3
```

## Publish

```
$ docker push mcandre/docker-redis
```

## Cleanup

Sometimes you want to halt and delete Docker containers or images.

### Destroy all containers matching query

```
$ docker ps -a | grep docker-redis | awk '{ print $1 }' | xargs docker rm -f
```

### Destroy all images matching query

```
$ docker images | grep docker-redis | awk '{ print $3 }' | xargs docker rmi -f
```
