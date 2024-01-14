# Use the Python 3.8 slim-buster base image
FROM python:3.8-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install necessary packages as defined in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 7755 to allow external access
EXPOSE 7755

# Set the environment variable FLASK_APP to core/server.py
ENV FLASK_APP=core/server.py

# Run the run.sh script when the container starts
CMD ["bash", "run.sh"]