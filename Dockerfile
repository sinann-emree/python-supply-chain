# 1. Minimal Başlangıç (Alpine Linux tabanlı Python)
FROM python:3.9-alpine

# 2. Çalışma Klasörü
WORKDIR /app

# 3. Bağımlılıkları Yükle
COPY requirements.txt .
RUN pip install -r requirements.txt

# 4. Kodları Kopyala
COPY . .

# 5. Güvenlik: Root olmayan kullanıcı oluştur ve geç
RUN adduser -D pythonuser
USER pythonuser

# 6. Başlat
CMD ["python", "app.py"]