From ubuntu:latest
MAINTAINER shashankpatel5554@gmail.com
RUN apt update  
RUN apt install -y apache2 \
  apache2-utils \
  zip \
  unzip
RUN apt clean
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/cakezone.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip cakezone.zip
RUN cp -rvf cake-shop-website-template/* .
RUN rm -rf __MACOSX cake-shop-website-template cakezone.zip 
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
