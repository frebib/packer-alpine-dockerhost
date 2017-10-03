set -eux

apk add sudo

sed -i '/%wheel ALL=(ALL) ALL/s/^#\s*//' /etc/sudoers
sed -i '/root ALL=(ALL) ALL/s/) ALL/) NOPASSWD: ALL/' /etc/sudoers
