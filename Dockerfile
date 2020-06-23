FROM selenium/standalone-chrome-debug

USER root

RUN apt-get update \
  && apt-get install nano \
  && apt-get install cron

USER seluser

COPY bk.sh /home/seluser/bk.sh

RUN chmod +x /home/seluser/bk.sh

