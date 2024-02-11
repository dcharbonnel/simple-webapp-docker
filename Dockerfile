FROM ubuntu:18.04

RUN apt-get update && apt-get install -y python python-pip

RUN pip install requirements.txt

COPY . /opt/

ENTRYPOINT FLASK_APP=/opt/app.py FLASK_RUN_PORT=8080 flask run --host=0.0.0.0
