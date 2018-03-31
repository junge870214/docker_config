FROM nginx:latest
RUN mkdir -p /etc/letsencrypt/live/ 
ADD lylinux.net /etc/letsencrypt/live/lylinux.net/

RUN rm -rf /etc/nginx
COPY ./nginx/ /etc/nginx

#CMD ["nginx", "-g", "daemon off;"]
