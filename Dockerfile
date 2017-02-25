FROM alpine:3.4

# Install Ansible
RUN apk --update add python openssl py-pip ca-certificates && \
    apk --update add --virtual build-dependencies python-dev libffi-dev openssl-dev build-base  && \
    pip install --upgrade pip cffi && \
    pip install ansible==2.2.1.0   && \
    pip install setuptools==34.3   && \
    pip install ansible-lint       && \
    apk del build-dependencies     && \
    rm -rf /var/cache/apk/*
