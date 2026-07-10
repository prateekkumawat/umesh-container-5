FROM node:22-slim AS builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY app-tier/ /app/

# Install dependencies
RUN npm install -g npm@12.0.0
RUN npm install

# Expose port 4000 for the web server
EXPOSE 4000

CMD ["node", "index.js"]