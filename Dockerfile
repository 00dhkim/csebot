FROM python:3.7

RUN apt update
RUN apt install -y python3-pip

COPY . /var/tmp/telegramKnuAnnouncementBot
WORKDIR /var/tmp/telegramKnuAnnouncementBot
# VOLUME [ "/var/tmp/telegramKnuAnnouncementBot/source/data" ]

RUN python3 -m pip install --upgrade pip
RUN pip3 install -r requirements.txt

CMD ["python3", "source/notice_bot.py"]