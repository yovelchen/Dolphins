FROM golang:1.17-alpine

# Start from the official Golang base image
FROM golang:1.17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the source code and HTML file into the container
COPY . .

# Build the Go application
RUN go build -o dolphins dolphins.go

# Expose a port that the application will listen on
EXPOSE 8080

# Set the entry point for the container
ENTRYPOINT ["./dolphins"]
