FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /code && mkdir -p /var/www/resource/
WORKDIR /code
ADD ./codes/DjangoBlog/ /code/
RUN pip install -Ur requirements.txt  && \
        pip install gunicorn 
        

CMD [ "/code/DjangoBlog/manage.py" ]

