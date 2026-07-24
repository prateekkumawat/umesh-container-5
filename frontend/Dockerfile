# Using base image of python applicaitons 
FROM python:3.11-rc-slim-bullseye

# Define workdir default 
WORKDIR /app

#Copy Source code of app 
COPY requirements.txt /app/  

# Install python Dependancies 
RUN pip install -r requirements.txt

# copy source code in /app
COPY templates /app/templates
COPY app.py /app/

# Expose Python Flask app port
EXPOSE 80

# Running command service 
CMD ["python", "app.py"]