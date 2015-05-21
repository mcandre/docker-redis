FROM ubuntu
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ADD site.pp /etc/puppet/manifests/
RUN apt-get update && \
    apt-get install -y puppet && \
    puppet module install fsalum-redis && \
    puppet apply /etc/puppet/manifests/site.pp --verbose --detailed-exitcodes || [ $? -eq 2 ]
EXPOSE 6379
ENTRYPOINT /usr/bin/redis-server
