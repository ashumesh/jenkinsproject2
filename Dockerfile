FROM centos:latest
MAINTAINER ashwinimesh@12345@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/uliya.zip /var/www/html
WORKDIR /var/www/html
RUN unzip uliya.zip
RUN cp -rvf uliya/* .
RUN rm -rf uliya uliya.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
