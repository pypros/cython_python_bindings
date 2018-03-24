FROM ubuntu:17.10

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    g++ \
    python-dev \
    python3-dev \
    python-pip \
    python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN \
    pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install --upgrade Cython

RUN \
    pip3 install --upgrade pip && \
    pip3 install --upgrade setuptools && \
    pip3 install --upgrade Cython

