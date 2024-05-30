# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the local code to the container
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir pyTelegramBotAPI requests

# Run the bot when the container launches
CMD ["python", "./server.py"]
