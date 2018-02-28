FROM ubuntu:latest

# basic setting for python
RUN apt-get update
RUN apt-get install -y python3-pip python3-dev

RUN pip3 install --upgrade pip


# install my app
WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt


# expose ports
EXPOSE 5000


## launch
CMD [ "python3", "server.py" ]