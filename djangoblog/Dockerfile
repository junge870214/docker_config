FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /code
WORKDIR /code
ADD ./codes/DjangoBlog/ /code/
RUN pip install -Ur requirements.txt -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com && \
        pip install gunicorn -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com
        

CMD [ "/code/DjangoBlog/manage.py" ]
