FROM python:3.7-alpine
MAINTAINER Marcelo González

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user