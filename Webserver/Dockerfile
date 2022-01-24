# Container base image
FROM ubuntu:20.04

LABEL maintainer="Quinn Henry"
LABEL version="0.1"
LABEL description="Custom NGINX Server Running on Ubuntu 20.04"

# Disable package install prompt
ARG DEBIAN_FRONTEND=noninteractive

# Update repositories
RUN apt update

# Install nginx, php-fpm and supervisord
RUN apt install -y nginx php-fpm supervisor && \
    rm -rf /var/lib/apt/list/* && \
    apt clean

# Environment variables
ENV nginx-vhost /etc/nginx/sites/available/default
ENV php_conf /etc/php/7.4/fpm/php.ini
ENV nginx_conf /etc/nginx/nginx.conf
ENV supervisor_conf /etc/supervisor/supervisord.conf

# Enable PHP-fpm on virtualhost config
COPY default ${nginx_vhost}
RUN sed -i -e 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' ${php_conf} && \
    echo "\ndaemon off;" >> ${nginx_conf}

# Copy supervisor config
COPY supervisord.conf ${supervisor_conf}

RUN mkdir -p /run/php && \
    chown -R www-data:www-data /var/www/html && \
    chown -R www-data:www-data /run/php

# Volumes
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Copy start script and define command for container to run upon startup
COPY start.sh /start.sh
CMD ["chmod +x /start.sh", "./start.sh"]

# Expose http and https ports
EXPOSE 80 443