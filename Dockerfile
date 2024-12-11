FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean
    
EXPOSE 80

ADD index.html /var/www/html/

CMD /usr/sbin/start_apache2 -DFOREGROUND -k start
