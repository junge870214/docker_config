FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /code/DjangoBlog/ && mkdir -p /var/www/resource/
ADD ./codes/requirements.txt /requirements.txt
RUN pip install -Ur /requirements.txt -i http://pypi.douban.com/simple/  --trusted-host pypi.douban.com && \
        pip install gunicorn  -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com
    