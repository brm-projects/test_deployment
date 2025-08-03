FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy requirements first for better caching (if you have any)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY main.py .

# Default command: run the Python application
CMD ["tail", "-f", "/dev/null"]