# Use an official Python runtime as a parent image
FROM python:3.4.5-slim

RUN ls

# Set the working directory to /ColECM
WORKDIR /ColECM

# Copy the current directory contents into the container at /ColECM
ADD . /ColECM

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run src/main.py when the container launches
ENTRYPOINT ["python", "src/main.py"]

CMD input
