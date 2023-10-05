# Use an official Ubuntu runtime as a parent image
FROM --platform=amd64 debian:latest

# Update the package repository and install necessary tools
RUN apt-get update && apt-get install -y \
    gcc \
    gdb \
    ltrace \
    strace \ 
    cmake \ 
    bsdmainutils \
    file

# Set the working directory to /app
WORKDIR /app

CMD /bin/bash
