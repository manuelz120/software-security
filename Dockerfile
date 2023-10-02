# Use an official Ubuntu runtime as a parent image
FROM debian:latest

# Update the package repository and install necessary tools
RUN apt-get update && apt-get install -y \
    gcc \
    gdb \
    ltrace \
    strace

# Set the working directory to /app
WORKDIR /app

CMD tail -f /dev/null
