FROM centos:latest

RUN yum install httpd -y

RUN yum install net-tools -y

COPY index.html /var/www/html

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

RUN echo /usr/sbin/httpd >> /root/.bashrc
