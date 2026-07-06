# base image of redhat os
FROM redhat/ubi9:latest
# install httpd pacakge for web server
RUN yum install httpd -y 
# add new directory to the container
RUN mkdir /applog
# copy Source code to the container
COPY index.html /var/www/html/
COPY script.sh /applog/
# run script.sh in background
RUN chmod +x /applog/script.sh
CMD ["/bin/bash", "-c", "/applog/script.sh & exec /usr/sbin/httpd -D FOREGROUND"]
# running httpd service in port
EXPOSE 80/tcp
EXPOSE 443/tcp
EXPOSE 53/udp