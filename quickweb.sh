echo "server { listen 8000; location / { autoindex on;}}" > /tmp/dirsite.conf
docker run -t -i --rm \
   -p 8000:8000 \
   -v $PWD:/usr/share/nginx/html \
   -v /tmp/dirsite.conf:/etc/nginx/sites-enabled/dirsite.conf \
   andrefernandes/docker-nginx:latest ${@}

