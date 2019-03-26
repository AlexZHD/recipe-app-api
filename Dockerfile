FROM python:3.7-alpine
LABEL maintainer www.zmachy.com

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

#-D - create user to run app only not haveing /home dir
RUN adduser -D user
USER user

