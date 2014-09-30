docker run -t -i --rm \
   -p 80:80 \
   -v $PWD:/usr/share/nginx/html \
   andrefernandes/docker-nginx:latest ${@}

