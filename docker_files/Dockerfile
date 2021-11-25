FROM mariadb:latest
MAINTAINER secdevoops
COPY galera.cnf /etc/mysql/conf.d/01-galera.cnf
COPY startup.sh /startup.sh
RUN chown mysql:mysql /startup.sh
RUN chmod 777 /startup.sh

USER mysql:mysql
CMD ["/startup.sh"]
