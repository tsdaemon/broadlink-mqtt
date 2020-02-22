FROM python:3.6.9

#RUN apt-get update && apt-get install -y\
#   build-essential libssl-dev libffi-dev python3-dev git python3-pip

#RUN git clone https://github.com/TechForze/broadlink-mqtt

COPY . /broadlink-mqtt

WORKDIR /broadlink-mqtt

RUN pip install -r /broadlink-mqtt/requirements.txt

CMD ["python", "/broadlink-mqtt/mqtt.py"]
