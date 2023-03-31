FROM rockylinux/rockylinux:latest
 
 
# Install apache2 with less
RUN yum -y update && \
yum -y install httpd && \
yum clean all
 
# Sample index.html for test 
#COPY index.html /var/www/html/index.html
 
# Port and set entry point for container 
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
