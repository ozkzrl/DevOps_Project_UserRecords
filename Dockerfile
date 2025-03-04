# Flask uygulaması için temel imaj
FROM python:3.9-slim

# Çalışma dizinini oluştur
WORKDIR /app

# Gereksinimlerinizi yüklemek için requirements.txt dosyasını kopyalayın
COPY requirements.txt .

# Bağımlılıkları yükleyin
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama dosyalarını kopyalayın
COPY . .

# Flask uygulamasını başlatan komut
CMD ["python", "app.py"]
