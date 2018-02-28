FROM ubuntu:latest

RUN apt-get update && apt-get install -y python python-pip

WORKDIR /python27/jaeger_client
COPY requirements.txt app.py ./
COPY api/ ./api/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# expose ports
EXPOSE 5000

## launch
CMD [ "python", "server.py" ]