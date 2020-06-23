FROM selenium/standalone-chrome-debug

USER root

RUN apt-get update \
  && apt-get install nano \
  && apt-get install cron

USER seluser
