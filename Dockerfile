FROM ruby:2.4.1-slim
MAINTAINER Lucro Engineering <dev@lucro.com>

ENV DEV_PACKAGES="tzdata nodejs libpq-dev postgresql-client curl wkhtmltopdf"

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_6.x | bash && \
    apt-get install -y $DEV_PACKAGES && \
    apt-get clean
