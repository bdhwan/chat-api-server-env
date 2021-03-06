FROM bdhwan/parse-server-open-korean:0.0.1
MAINTAINER bdhwan@gmail.com


RUN apt-get install -y cron

ADD crontab /etc/cron.d/log-cron
RUN chmod 644 /etc/cron.d/log-cron
RUN crontab /etc/cron.d/log-cron

ADD healthcheck.js /home/healthcheck.js
ADD check.sh /home/check.sh
ADD check_reload.sh /home/check_reload.sh

WORKDIR /home
HEALTHCHECK --interval=60s CMD node healthcheck.js
EXPOSE 8080
ENTRYPOINT ["/bin/sh", "check.sh"]


