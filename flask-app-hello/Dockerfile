FROM ubuntu:latest

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-pip && rm -rf /var/lib/apt/lists/*
RUN mkdir /app

# Set the working directory
WORKDIR /app

# Copy the requirements and install Python libraries
COPY requirements.txt /app/requirements.txt
RUN pip3 install --break-system-packages -r requirements.txt

# Copy the application code to the container
COPY src/ /app

CMD ["python3", "-m", "flask", "run", "--host", "0.0.0.0", "--port", "6000"]

EXPOSE 6000

