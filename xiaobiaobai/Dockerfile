FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /code/xiaobiaobai.api/ && mkdir -p /var/www/resource/
ADD ./codes/requirements.txt /requirements.txt
RUN rm /etc/apt/sources.list
ADD ./sources.list  /etc/apt/sources.list
RUN apt-get update && apt-get install libgmp-dev libffi-dev libtool pkg-config automake build-essential -y && \
 pip install -Ur /requirements.txt -i http://pypi.douban.com/simple/  --trusted-host pypi.douban.com && \
        pip install gunicorn  -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com && \
         apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

