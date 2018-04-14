basedir=`pwd`
docker rm mysqldev
#mysql
docker run --name mysqldev -p 3306:3306  -v $basedir/mysql:/var/lib/mysql -e  MYSQL_ROOT_PASSWORD=root -d mysql
#memcached
docker run --name memcachedev -d memcached memcached -m 64 -p 11211:11211

# Backup
#docker exec CONTAINER /usr/bin/mysqldump -u root --password=root DATABASE > backup.sql

# Restore
#docker exec -i CONTAINER /usr/bin/mysql -u root --password=root DATABASE < backup.sql