FROM ruby:2.3.1-slim
MAINTAINER arobson <arobson@gmail.com>

ENV DEV_PACKAGES="tzdata nodejs postgresql-server-dev-9.4 postgresql-client curl wkhtmltopdf"

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash
RUN apt-get install -y $DEV_PACKAGES
RUN apt-get clean
