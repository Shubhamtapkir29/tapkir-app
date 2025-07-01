FROM ubuntu:20.04

#disable interactive port
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y apache2

COPY index.html /var/www/html/

EXPOSE 80

#start  in foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
