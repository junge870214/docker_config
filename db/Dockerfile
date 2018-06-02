FROM mysql

RUN mkdir -p /var/lib/mysql/ && mkdir -p /var/log/mysql/  && chown -R mysql:root /var/lib/mysql/ && \
    chown -R mysql:mysql /var/lib/mysql/ && \
    chown -R mysql:mysql /var/log/mysql/ && \
    chown -R  mysql /var/lib/mysql && \
    chgrp -R  mysql /var/lib/mysql && \
    chown -R mysql:root /var/lib/mysql/
#ADD django.sql /etc/django.sql
#ADD wordpress.sql /etc/wordpress.sql
CMD ["mysqld"]

EXPOSE 3306
