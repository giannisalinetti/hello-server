FROM docker.io/golang

MAINTAINER Gianni Salinetti <gsalinet@redhat.com>

# Copy files for build
COPY main.go /go/src/hello-server/

# Set the working directory
WORKDIR /go/src/hello-server

# Download dependencies
RUN go get -d -v ./...

# Install the package
RUN go install -v ./...

EXPOSE 8080

CMD ["hello-server"]
