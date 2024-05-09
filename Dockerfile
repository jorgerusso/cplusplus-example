# Use an official Ubuntu runtime as the base image
FROM ubuntu:latest

# Install build essentials
RUN apt-get update && \
    apt-get install -y build-essential

# Set the working directory in the container
WORKDIR /app

# Copy the source code into the container
COPY program.cpp /app

# Compile the program inside the container
RUN g++ -o program program.cpp

# Run the program when the container starts
CMD ["/app/program"]