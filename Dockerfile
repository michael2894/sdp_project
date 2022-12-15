# syntax=docker/dockerfile:1

FROM python:3.9.2 AS production

WORKDIR /go/src/github.com/michael2894/sdp_project/

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

FROM python:3.9.2 AS develop

WORKDIR /go/src/github.com/michael2894/sdp_project/tree/develop

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

