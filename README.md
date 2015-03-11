# docker-redis - a Docker container for Redis

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-redis/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-redis .
docker exec 7ead42dd0e75b22d8042e3e42bd5224ef8be1ace5422a21821583f13a650d84a redis-cli set dogmoon 3
OK
docker exec 7ead42dd0e75b22d8042e3e42bd5224ef8be1ace5422a21821583f13a650d84a redis-cli get dogmoon
3
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
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

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker make
```
