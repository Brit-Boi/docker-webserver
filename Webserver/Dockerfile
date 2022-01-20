FROM centos:latest
RUN yum -y install httpd
COPY index.html /var/www/html/
CMD ["/usr/sgin/httpd", "-D", "FOREGROUND"]
EXPOSE 80