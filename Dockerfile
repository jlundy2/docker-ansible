ARG ANSIBLE_VERSION=2.9

FROM mirror.gcr.io/ansible:3.12

RUN adduser -D -h /home/ansible ansible

RUN apk add --no-cache git bash openssl ca-certificates
RUN apk add --update python3 python3-dev make musl-dev py3-cffi py3-cryptography libffi-dev openssl-dev gcc curl
RUN pip3 install cryptography==2.5 ansible==$ANSIBLE_VERSION

USER ansible