set -eux

# wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/answers<enter><wait>",
# setup-alpine -f f<enter><wait5s>",
# {{user `rootpw`}}<enter>{{user `rootpw`}}<enter>",
# <wait12s>",
# y<enter>",
# <wait20s>",
# mount /dev/vda3 /mnt<enter>",
# echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config<enter>",
# umount /mnt<enter>",
# reboot<enter>"

wget http://$PACKER_HTTP_ADDR/answers

{
    echo changeme;
    echo changeme;
    echo y;
} | setup-alpine -f answers

mount /dev/vda3 /mnt
echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config
umount /mnt

reboot
