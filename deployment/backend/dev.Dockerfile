FROM golang:1.24.1 AS builder

# Gerekli bağımlılıkları yükle
RUN apt update && apt install -y gcc musl-dev

# Çalışma dizinini belirle
WORKDIR /app

# Modül dosyalarını kopyala ve bağımlılıkları yükle
COPY go.mod go.sum ./
RUN go mod tidy

# Uygulama dosyalarını kopyala
COPY . .

# Air yükle
RUN go install github.com/air-verse/air@latest

# Air ile çalıştır
CMD ["air", "-c", "air.toml"]
