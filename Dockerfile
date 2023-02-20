From centos:latest
MAINTAINER shashankpatel5554@gmail.com
RUN apt install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/cakezone.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip cakezone.zip
RUN cp -rvf cake-shop-website-template/* .
RUN rm -rf __MACOSX cake-shop-website-template cakezone.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
