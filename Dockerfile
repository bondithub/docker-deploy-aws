FROM python:3.8.5

RUN apt update -y
RUN pip install -U pip

RUN pip install awscli --upgrade