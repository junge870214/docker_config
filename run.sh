#清理临时镜像
docker rmi $(docker images -q -f dangling=true) -f
#清理所有容器
docker rm $(docker ps -a -q) -f
#rm -rf  db/var/lib/mysql/*
docker-compose build
docker-compose up 

#$ sudo docker exec -it 775c7c9ee1e1 /bin/bash  
#docker exec database.dev bash /tmp/import.sh
