FROM golang:1.16-alpine3.15 as build-stage

WORKDIR /usr/src/app

# Dockerfile run in the root folder of the repository
COPY . .

# Disable dynamic linking
ENV CGO_ENABLED=0

RUN go build

FROM scratch

COPY --from=build-stage /usr/src/app/server /usr/src/app/server

ENV REQUEST_ORIGIN=http://localhost:5000
EXPOSE 8080

CMD ["/usr/src/app/server"]
