# untuk membuat Docker image dari Dockerfile dengan nama image item-app dan tag v1
docker run -d --name=item-app -p 80:8080 item-app:v1

# untuk menampilkan daftar image
docker images

# untuk mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 dodysetiawan/item-app:v1

# untuk login ke Docker Hub
docker login -u dodysetiawan --password '0292&Dody'

# untuk mengunggah image ke Docker Hub
docker push dodysetiawan/item-app:v1