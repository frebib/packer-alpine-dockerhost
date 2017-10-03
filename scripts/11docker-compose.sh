set -eux

apk add python py-pip
pip install docker-compose
apk del py-pip

docker-compose --version
