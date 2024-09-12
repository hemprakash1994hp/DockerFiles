#FROM docker/whalesay:latest
#LABEL Name=demoprojects Version=0.0.1
#RUN apt-get -y update && apt-get install -y fortunes
#CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]


FROM ubuntu:16

LABEL Name=First_Demo Version=1

RUN apt-get update && apt-get install -y apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80
CMD [ "/usr/sbin/apache2", "-D", "FOREGROUND" ]
