FROM ubuntu:latest
MAINTAINER pratik kawane 

RUN apt-get update
RUN apt-get install -y apache2
RUN mkdir -p /var/lock/apache2
RUN mkdir -p /var/run/apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_LOG_DIR /var/log/apache2
ENV LANG C

CMD ["/usr/sbin/apache2","-D","FOREGROUND"]
EXPOSE 80


#FROM ubuntu
#RUN apt-get update 
#RUN apt-get install -y python3
#RUN    apt-get install  -y python3-pip
#RUN pip install flask
#COPY app.py  /opt/app.py
#EXPOSE  8080
#ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0





