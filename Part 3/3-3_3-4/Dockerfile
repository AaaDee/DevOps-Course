FROM docker

WORKDIR /usr/src/app

# Assume builder.sh found in the same folder
COPY . .

ENTRYPOINT ["/usr/src/app/builder.sh"]