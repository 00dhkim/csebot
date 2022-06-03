FROM python:3.7-alpine

RUN apt update
RUN apt install -y python3-pip

COPY . /var/tmp/telegramKnuAnnouncementBot
WORKDIR /var/tmp/telegramKnuAnnouncementBot
VOLUME [ "/var/tmp/telegramKnuAnnouncementBot/source/data" ]

RUN pip3 install -r requirements.txt

CMD ["python3", "notice_bot.py"]