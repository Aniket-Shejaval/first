FROM centos:latest
RUN yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page285/a-world.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip a-world.zip
RUN cp -rvf markups.a-world/*.
RUN rm -rf _MACOSX markups-a-world a-world.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
