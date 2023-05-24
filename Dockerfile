# base image file ini adalah Node.js versi 14
FROM node:14

# working directory yang digunakan berada di /app
WORKDIR /app

# menyalin semua file yang ada di source code ke working directory
COPY . .

# konfigurasi agar aplikasi berjalan di production mode dan database host bernama item-db 
ENV NODE_ENV=production DB_HOST=item-db

# perintah agar menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# mengekspos port yang digunakan oleh aplikasi
EXPOSE 8080

# untuk menjalankan server
CMD [ "npm", "start" ]
