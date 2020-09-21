FROM ubuntu:latest
MAINTAINER T K "ktej0816@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential
ADD . /flask-app
WORKDIR /flask-app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]
