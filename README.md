docker-nginx
============

Base CentOS 7 with nginx.

Based on the official "dockerfile/nginx" image
and with bits from "internavenue/centos-nginx"

This is just a plain nginx image meant for reuse.
It exposes the same volumes as the original official
nginx image, but is bases on CentOS 7.

### Useful scripts

* **build.sh** : builds the image locally (docker build)
* **runbash.sh** : convenient way to run commands on a new
container (fast-food, auto-destroy) or even to just
open a bash shell to play.
* **runweb.sh** : runs nginx container as daemon.

#### Some nice tests:

Open bash:

    ./runbash.sh
    bash-4.2# echo Wheeee

Show nginx version:

    ./runbash.sh nginx -v
    nginx version: nginx/1.6.1

#### Volumes

Several volumes are exposed in order to permit reuse
in several ways. Feel free to toy around with it.
    
