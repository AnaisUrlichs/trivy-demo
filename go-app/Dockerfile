FROM golang:1.16-buster AS build

WORKDIR /app

COPY go.mod .
RUN go mod download

COPY *.go .

RUN go build -o app

ENTRYPOINT ["./app"]