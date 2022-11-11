FROM python:latest

RUN pip install errbot mattermost

RUN mkdir -p /opt/errbot/data

ADD config.py /opt/errbot/
ADD plugins/err-example /opt/errbot/plugins/

WORKDIR /opt/errbot

CMD [ "errbot" ]