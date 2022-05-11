FROM centos:7

RUN yum install net-tools httpd php -y

COPY index.php /var/www/html/

EXPOSE 80/tcp

ENTRYPOINT ["/usr/sbin/httpd"]

CMD ["-DFOREGROUND"]
