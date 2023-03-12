From ubuntu:latest
MAINTAINER shashankpatel5554@gmail.com
RUN apt update  
RUN apt install -y apache2 \
  apache2-utils \
  zip \
  unzip
RUN apt clean
ADD https://www.free-css.com/assets/files/free-css-templates/download/page283/bloscot.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip bloscot.zip
RUN cp -rvf html/* .
RUN rm -rf __MACOSX html bloscot.zip
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
