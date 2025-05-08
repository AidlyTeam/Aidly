# Temel image olarak Node.js'i kullanıyoruz
FROM node:18-alpine

# Çalışma dizini oluşturuluyor
WORKDIR /usr/src/app

# package.json ve package-lock.json dosyasını kopyala
COPY package*.json ./

# Gerekli bağımlılıkları yükle
RUN npm install --include=dev

# TypeScript ve ts-node'yi global olarak yükle
RUN npm install -g typescript ts-node nodemon

# Uygulamanın tüm dosyalarını kopyala
COPY . .

# Uygulamanın çalışması için gerekli portu aç
EXPOSE 8082

# Docker container başlatıldığında çalışacak komut
CMD [ "npm", "run", "dev" ]
