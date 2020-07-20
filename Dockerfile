FROM ubuntu:16.04

RUN mkdir /app

WORKDIR /app

RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y wget tar make gcc g++ python3

RUN wget -P /app https://software.intel.com/sites/landingpage/pintool/downloads/pin-3.11-97998-g7ecce2dac-gcc-linux.tar.gz && wget -P /app ftp://ftp.cs.wisc.edu/markhill/DineroIV/d4-7.tar.gz

RUN mkdir /app/cachediff

COPY . /app/cachediff

RUN tar -xf /app/pin-3.11-97998-g7ecce2dac-gcc-linux.tar.gz &&  mv /app/pin-3.11-97998-g7ecce2dac-gcc-linux /app/pin && tar -xf /app/d4-7.tar.gz && mv /app/d4-7 /app/dinero

ENV PIN=/app/pin

ENV DINERO=/app/dinero

RUN cd /app/dinero && ./configure && make && cd /app && rm -r pin/source/tools/MyPinTool && cp -r cachediff/pin/source/tools/MyPinTool pin/source/tools/ && cd pin/source/tools/ && make

ENTRYPOINT ["python3", "cachediff/cachediff.py"]