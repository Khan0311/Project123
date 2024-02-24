
FROM centos:latest
RUN yum -y install httpd
RUN echo "<html><head><title>Google</title></head><body><h1>Welcome to Google!</h1></body></html>" > /var/www/html/index.html
RUN systemctl enable httpd
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

