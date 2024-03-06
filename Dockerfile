FROM centos:7
RUN yum update -y
RUN yum -y install httpd
COPY new.html /var/www/html/
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
