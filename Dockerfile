FROM ubuntu:trusty

RUN apt-get update && \
    apt-get install -y git python-dev libffi-dev libssl-dev python-pip && \
    pip install --upgrade pip && \
    pip install setuptools==34.3 && \
    pip install ansible && \
    pip install ansible-lint && \
    rm -rf /var/cache/apt/*
