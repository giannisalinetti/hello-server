FROM docker.io/golang

MAINTAINER Gianni Salinetti <gsalinet@redhat.com>

# Copy files for build
COPY main.go /go/src/minimal-webserver/

# Set the working directory
WORKDIR /go/src/minimal-webserver

# Download dependencies
RUN go get -d -v ./...

# Install the package
RUN go install -v ./...

EXPOSE 8080

CMD ["minimal-webserver"]
