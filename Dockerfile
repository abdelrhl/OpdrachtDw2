FROM ubuntu:22.04
RUN apt update && apt install -y apache2 && date > /var/www/html/buildtime.txt
ENV DEBIAN_FRONTEND=noninteractive
COPY html /var/www/html/
WORKDIR /home/ubuntu
EXPOSE 80/tcp
CMD ["apache2ctl", "-D", "FOREGROUND"]

