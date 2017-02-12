FROM ubuntu

MAINTAINER Eranga Bandara (erangaeb@gmail.com)

# Update apt-get sources AND install required packages 
RUN apt-get update -y
RUN apt-get install -y apt-transport-https
RUN apt-get install -y build-essential
RUN apt-get install -y python python-pip python-dev python-setuptools
RUN apt-get install -y libmysqlclient-dev

# Set envirounment variables
ENV DB_HOST dev.localhost

# app runs on 8000 port
EXPOSE 8000 

# copy app
ADD . /app
WORKDIR /app

# install pip packages
RUN pip install -r requirement.txt

# run app
ENTRYPOINT ["/app/docker-entrypoint.sh"]
