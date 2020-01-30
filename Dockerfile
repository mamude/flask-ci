FROM python:3.6-alpine

ENV PYTHONNUMBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
RUN mkdir /tests
WORKDIR /app
COPY ./app /app
COPY ./tests /tests

RUN adduser -D user
USER user