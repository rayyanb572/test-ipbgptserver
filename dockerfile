# Menggunakan image dasar Python
FROM python:3.9-slim

# Set work directory
WORKDIR /app

# Copy requirements dan install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Menyalin aplikasi ke dalam container
COPY . .

# Set environment variable untuk PORT
ENV PORT=8080

# Jalankan aplikasi FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
