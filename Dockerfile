FROM devopsil/puppet
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
COPY site.pp /etc/puppet/manifests/site.pp
RUN yum install -y tar && \
    puppet module install fsalum-redis && \
    puppet apply /etc/puppet/manifests/site.pp --verbose --detailed-exitcodes || [ $? -eq 2 ]
EXPOSE 6379
ENTRYPOINT ["/usr/sbin/redis-server"]
