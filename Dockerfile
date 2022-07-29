FROM ghcr.io/8ch9azbsfifz/docker-garpy:latest

MAINTAINER Gerolf Ziegenhain "gerolf.ziegenhain@gmail.com"

ENV USERNAME=""
ENV PASSWORD=""

RUN apt-get update
RUN apt-get -y install cron
RUN apt-get clean

WORKDIR /usr/src/app

COPY garmin-cron /etc/cron.d/garmin-cron
RUN chmod 0644 /etc/cron.d/garmin-cron
RUN crontab /etc/cron.d/garmin-cron
RUN touch /var/log/cron.log
CMD printenv | sed 's/^\(.*\)$/export \1/g' > /root/project_env.sh ; cron && tail -f /var/log/cron.log

USER 1000
