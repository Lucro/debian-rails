FROM ruby:2.3.1-slim
MAINTAINER arobson <arobson@gmail.com>

ENV DEV_PACKAGES="tzdata nodejs postgresql-server-dev-9.4 postgresql-client curl wkhtmltopdf"

RUN apt-get update
RUN apt-get install -y $DEV_PACKAGES
RUN apt-get clean
