FROM alpine:latest
MAINTAINER EliotPearson <eliot.pearson@gmail.com>

WORKDIR /app
VOLUME /app
COPY startup.sh /startup.sh
RUN chmod 700 /startup.sh


RUN apk add --update bash mysql mysql-client && rm -f /var/cache/apk/*
COPY my.cnf /etc/mysql/my.cnf
RUN mkdir -p /run/mysqld

EXPOSE 3306
CMD ["/startup.sh"]
