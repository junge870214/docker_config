FROM mysql

RUN chown -R mysql:root /var/lib/mysql/ && \
    chown -R mysql:mysql /var/lib/mysql/ && \
    chown -R mysql:mysql /var/log/mysql/ && \
    chown -R  mysql /var/lib/mysql && \
    chgrp -R  mysql /var/lib/mysql && \
    chown -R mysql:root /var/lib/mysql/

ADD django.sql /etc/django.sql

CMD ["mysqld"]

EXPOSE 3306