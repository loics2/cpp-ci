FROM ubuntu:focal

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl build-essential clang-format-9 git cppcheck python3-pip doxygen libboost-all-dev 

# cppcheck-codequality is used to convert cppcheck output to Gitlab Code
# Quality json format without using Code Climate
RUN curl "https://cmake.org/files/v3.18/cmake-3.18.1-Linux-x86_64.sh" -o cmake_install.sh && \
    mkdir -p /utils/cmake && \
    sh cmake_install.sh --skip-license --prefix=/utils/cmake && \
    ln -s /utils/cmake/bin/cmake /usr/local/bin/cmake && \
    pip3 install cppcheck-codequality jinja2 Pygments && \
    git clone git://github.com/mosra/m.css /utils/mcss/

