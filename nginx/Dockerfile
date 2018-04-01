FROM nginx:latest
RUN mkdir -p /etc/letsencrypt/live/ && mkdir /resource/
ADD lylinux.net /etc/letsencrypt/live/lylinux.net/

RUN rm -rf /etc/nginx
COPY ./nginx/ /etc/nginx
COPY ./resource /resource/

#CMD ["nginx", "-g", "daemon off;"]

