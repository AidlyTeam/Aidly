FROM node:20.18.1-alpine

ENV TZ=UTC
WORKDIR /app

# Sistem bağımlılıklarını yükle
RUN apk add --no-cache ca-certificates && update-ca-certificates

# package.json ve package-lock.json dosyalarını kopyala
COPY package*.json ./

# Bağımlılıkları yükle
RUN npm install

# Projenin geri kalanını kopyala
COPY . .

# Geliştirme komutu
CMD ["npm", "run", "dev"]