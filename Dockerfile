# CentOS 7 + Nginx

FROM andrefernandes/docker-centos7-base

MAINTAINER Andre Fernandes

# Based on the official "dockerfile/nginx" image
# and with bits from "internavenue/centos-nginx"

RUN yum install nginx -y && \
    yum clean all

RUN echo "daemon off;" >> /etc/nginx/nginx.conf && \
    echo "include /etc/nginx/sites-enabled/*;" >> /etc/nginx/conf.d/nginx-sites.conf

WORKDIR /opt

# Define mountable directories. Focus on reusability, felxibility, bla bla bla
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx","/usr/share/nginx/html"]

EXPOSE 80 443

# Define default command.
CMD ["nginx"]

