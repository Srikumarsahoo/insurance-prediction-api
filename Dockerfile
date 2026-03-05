# Python base image
FROM python:3.11-slim

# Working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy project
COPY . .

# Expose port
EXPOSE 8000

# Run frontend
CMD ["streamlit","run","frontend/frontend.py","--server.port=8000","--server.address=0.0.0.0"]