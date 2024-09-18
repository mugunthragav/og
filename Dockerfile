# Use an official Python runtime as a parent image
from python:3.9-slim

# Set the working directory in the container
workdir /app

# Copy the current directory contents into the container at /app
copy . /app

# Install any needed packages specified in requirements.txt
run pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
expose 5000

# Define environment variable
env MLFLOW_TRACKING_URI=http://127.0.0.1:5000

# Run app.py when the container launches
cmd ["python", "main.py"]

