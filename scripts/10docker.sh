set -eux

# Use edge/community to grab the most recent version of Docker
{
echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/main/'
echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/community/'
} >> /etc/apk/repositories
apk update

# Install docker
apk add \
        docker@edge \
        shadow

# Enable docker start on boot
rc-update add docker boot
service docker start

adduser -D -G docker docker
# Default password is 'changeme'
{ echo changeme; echo changeme; } | passwd docker
# Set account password as expired
echo changeme | chage -d 0 docker

# Enable password-less sudo for docker user
echo 'docker ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/docker-nopasswd
chmod 640 /etc/sudoers.d/*
