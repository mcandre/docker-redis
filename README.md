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
* [Node.js](https://nodejs.org/en/) (for dockerlint)
