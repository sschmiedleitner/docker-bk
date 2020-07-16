FROM selenium/standalone-chrome-debug

COPY bk.sh /home/seluser/bk.sh

ADD https://github.com/lvancrayelynghe/chrome-remote-reload/releases/download/pre-release/linux_386_chrome-remote-reload /home/seluser

USER root

RUN apt-get update \
  && apt-get install nano \
  && apt-get install cron \
  && chmod +x /home/seluser/bk.sh \
  && chmod +x /home/seluser/eroom.sh \
  && chmod +x /home/seluser/linux_386_chrome-remote-reload \
  && chown seluser:seluser /home/seluser/bk.sh \
  && chown seluser:seluser /home/seluser/eroom.sh

USER seluser
