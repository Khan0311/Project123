# Use CentOS as the base image
FROM centos:latest

# Install Apache
RUN yum -y install httpd

# Download Google index page to the default document root
RUN echo "<html><head><title>Google</title></head><body><h1>Welcome to Google!</h1></body></html>" > /var/www/html/index.html

# Enable Httpd service
RUN systemctl enable httpd

# Expose port 80
EXPOSE 80

# Start Apache service
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

