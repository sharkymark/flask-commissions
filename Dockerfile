# Define the argument before its first use
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# get ps utility in the container
RUN apt-get update && apt-get install -y procps curl net-tools htop ssh git

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


