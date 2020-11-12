FROM golang:alpine
RUN mkdir -p $GOPATH/src/go-pg-crud
WORKDIR $GOPATH/src/go-pg-crud
COPY . .
RUN go build -o main
CMD ["./main"]
