FROM ubuntu:bionic

RUN apt-get update && \
    apt-get install -y \
    build-essential git cppcheck=1.88 python3-pip

# used to convert cppcheck output to Gitlab Code Quality json format
# without using Code Climate
RUN pip3 install cppcheck-codequality

