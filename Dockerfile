FROM ubuntu:16.04

# basic setting for python
RUN apt-get update
RUN apt-get install -y python python-pip


# install my app
WORKDIR /app

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# expose ports
EXPOSE 5000


## launch
CMD [ "python", "server.py" ]