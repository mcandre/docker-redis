FROM ubuntu:10.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN apt-get update && \
		apt-get install -y puppet

ADD site.pp /etc/puppet/manifests/
RUN puppet module init && \
		puppet module install thomasvandoren-redis && \
		puppet apply /etc/puppet/manifests/site.pp --verbose --detailed-exitcodes || [ $? -eq 2 ]

EXPOSE 6379

ENTRYPOINT /usr/bin/redis-server
