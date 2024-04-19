FROM ubuntu:noble
ENV TZ=Europe/London
ENV DEBIAN_FRONTEND=noninteractive
RUN useradd -m jwholding
RUN apt-get update
RUN apt-get install -y tzdata
RUN apt-get install taskwarrior timewarrior python3 -y
USER jwholding