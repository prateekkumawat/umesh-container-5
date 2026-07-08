# Base image used is redhat ubi9
FROM redhat/ubi9:latest

ARG WEBAPP_PATH
ARG username
# Install httpd package for web server
RUN yum install httpd -y

# add user in container image 
RUN useradd -g apache $username

# Add new directory to the container
RUN mkdir /var/www/html/$WEBAPP_PATH

# Copy Source code to the container
COPY src/ /var/www/html/$WEBAPP_PATH/

RUN chown -R $username:apache /var/www/html/$WEBAPP_PATH
RUN chown -R $username:apache /var/log/httpd
RUN chown -R $username:apache /run/httpd

# container login using user
USER $username 

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# running httpd service in port
EXPOSE 80/tcp