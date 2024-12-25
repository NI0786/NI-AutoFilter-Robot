FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /NI-AutoFilter-Robot
WORKDIR /NI-AutoFilter-Robot
COPY . /NI-AutoFilter-Robot
CMD ["python", "bot.py"]
