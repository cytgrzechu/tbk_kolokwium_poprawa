# Use an official C++ runtime as the base image
FROM ubuntu:20.04

# Copy the program to the container
COPY program.cpp /app/

# Install dependencies
RUN apt-get update && \
    apt-get install -y g++ && \
    rm -rf /var/lib/apt/lists/*

# Change working directory
WORKDIR /app

# Compile the program
RUN g++ program.cpp -o main

# Copy the text file to the container
COPY numbers.txt /app/

# Run the program with the text file as the second argument and 3 as the first argument
CMD ["./main", "3", "numbers.txt"]