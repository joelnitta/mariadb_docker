FROM rocker/tidyverse:latest

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		nano \
		libmariadb-client-lgpl-dev \
		mysql-client \
		mysql-server \
	&& apt-get clean \
	&& install2.r -e DBI RMariaDB

ENTRYPOINT service mysql start
