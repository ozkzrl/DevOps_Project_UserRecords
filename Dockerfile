# Base image
FROM python:3.9-slim

# Set working directory in the container
WORKDIR /app

# Copy requirements.txt to the working directory
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code (including app.py)
COPY . .

# Expose the application port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
