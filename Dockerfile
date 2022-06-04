FROM python:3.7

RUN apt update
RUN apt install -y python3-pip

COPY . /var/tmp/csebot
WORKDIR /var/tmp/csebot
# VOLUME [ "/var/tmp/csebot/source/data" ]

RUN python3 -m pip install --upgrade pip
RUN pip3 install -r requirements.txt

CMD ["python3", "source/notice_bot.py"]