FROM ubuntu:12.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN apt-get update
RUN apt-get install -y puppet

ADD site.pp /etc/puppet/manifests/
RUN puppet apply /etc/puppet/manifests/site.pp --verbose --detailed-exitcodes || [ $? -eq 2 ]

EXPOSE 6379

ENTRYPOINT /usr/bin/redis-server
