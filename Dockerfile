FROM golang:1.17-alpine
#Learn more about the "FROM" Dockerfile command.
# golang:1.17-alpine

WORKDIR /cmd

COPY go.mod go.sum ./
RUN go mod tidy

RUN go build -o /Hello9000

EXPOSE 9000

CMD [ "/Hello9000" ]
