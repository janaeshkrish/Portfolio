FROM python:3.8.8

RUN pip install --upgrade pip

COPY ./req.txt .

RUN pip install -r req.txt

COPY ./protfolio /app

WORKDIR /app

COPY ./entrypoint.sh /

ENTRYPOINT ['sh','/entrypoint.sh']

