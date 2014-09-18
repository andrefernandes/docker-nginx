ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
#echo "ENVBASH=$ENVBASH"
docker run --rm -t -i --name web \
   -p 80:80 \
   andrefernandes/docker-nginx:latest $ENVBASH ${@:2}

