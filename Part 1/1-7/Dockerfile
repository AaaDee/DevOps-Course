FROM ubuntu:latest

WORKDIR /usr/src/app

# Assume file permissions are already updated
COPY curler.sh .

RUN apt update
RUN apt-get -yq install curl

CMD ./curler.sh
