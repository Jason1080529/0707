FROM python:3.6.9

LABEL version="1.0"
LABEL Copyright="2022"
LABEL owner="yillkid"

WORKDIR /app

ADD . /app

RUN pip3 install -r requirements.txt

EXPOSE 5001

VOLUME ["/app/logs"]

CMD ["python3", "server.py"]
