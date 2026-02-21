# A tiny base image with Python pre-installed
FROM python:3.11-alpine

# Create a working directory
WORKDIR /app

# Copy the static web page into the image
COPY index.html /app/index.html

# Expose port 8000 (informational)
EXPOSE 8000

# Run a simple web server serving the current directory
CMD ["python", "-m", "http.server", "8000"]
