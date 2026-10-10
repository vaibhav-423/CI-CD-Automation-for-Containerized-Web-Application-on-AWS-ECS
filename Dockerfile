
FROM ubuntu:latest

LABEL Author="Vaibhav"
LABEL Project="Tooplate"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y git apache2

WORKDIR /var/www/html

RUN apt install -y unzip
ADD target/stackcraft.war /tmp/stackcraft.war
RUN unzip /tmp/stackcraft.war -d /var/www/html/ && rm /tmp/stackcraft.war

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
