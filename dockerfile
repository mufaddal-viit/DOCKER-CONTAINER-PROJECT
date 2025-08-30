# Use the official Node.js image
FROM node:22-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the HTML file to the container
COPY index.html .

# Install http-server to serve static files
RUN npm install -g http-server

# Expose port 8080 to allow access to the server
EXPOSE 8080

# Command to run the HTTP server and serve the HTML page
# The command that will run when the container starts. It uses http-server to serve the current directory (.) on port 8080.
CMD ["http-server", ".", "-p", "8080"]
