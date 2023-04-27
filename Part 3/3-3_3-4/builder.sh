#!/bin/sh
# login
docker login -u $DOCKER_USER -p $DOCKER_PWD

# clone
git clone  https://github.com/$1

# get folder
folder=$(echo $1 | awk -F'/' '{print $2}')

# build
cd $folder
docker build -t $2 .

# push
docker push $2
