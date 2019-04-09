FROM ubuntu:latest
MAINTAINER Per von Rosen "per.von.rosen@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY -R . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD["export FLASK_APP=flaskr"]
CMD["flask init-db"]
CMD ["flask run"]
