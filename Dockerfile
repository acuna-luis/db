FROM mysql:5.7.15

MAINTAINER me

ENV MYSQL_DATABASE=seniority \
    MYSQL_ROOT_PASSWORD=seniority

ADD schema.sql /docker-entrypoint-initdb.d

EXPOSE 3306
