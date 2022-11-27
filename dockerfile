FROM python:2.7-alpine

WORKDIR  /app

COPY . /app/

RUN pip install -r requirements.txt

CMD gunicorn app:app -b 0.0.0.0:80

