FROM golang:1.16-alpine3.15

WORKDIR /usr/src/app

EXPOSE 8080

# Dockerfile run in the root folder of the repository
COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build && \
  adduser -D appuser

USER appuser

CMD ["./server"]
