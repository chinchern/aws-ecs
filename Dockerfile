# Use official Python image as base
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the current directory content into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Streamlit default port
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.enableCORS=false"]
