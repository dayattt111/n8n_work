echo "Memulai Script..."
docker volume create n8n_data

echo "oke Volume berhasil di install"
sleep 1

echo "Oke sekarang siap untuk menginstall image untuk n8n"
sleep 1
echo "3..."
echo "2....."
echo "1......."

docker run -it --rm \
 --name n8n \
 -p 5678:5678 \
 -v n8n_data:/home/node/.n8n \
 docker.n8n.io/n8nio/n8n

echo "Oke sudah berhasil untuk menginstall N8N"
