FROM selenium/standalone-chrome-debug

USER root

RUN apt-get update \
  && apt-get install nano \
  && apt-get install cron

USER seluser

COPY bk.sh /home/seluser/bk.sh

ADD https://github.com/lvancrayelynghe/chrome-remote-reload/releases/download/pre-release/linux_386_chrome-remote-reload 
/home/seluser

RUN chmod +x /home/seluser/bk.sh

