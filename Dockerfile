FROM ubuntu:bionic

RUN apt-get update && \
    apt-get install -y build-essential git cppcheck

