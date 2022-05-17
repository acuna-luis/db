FROM mysql:5.7.15

MAINTAINER me

ENV MYSQL_DATABASE=td \
    MYSQL_ROOT_PASSWORD=td

ADD schema.sql /docker-entrypoint-initdb.d

EXPOSE 3306
