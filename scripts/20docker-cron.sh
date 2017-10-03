set -ux

# Enable cron starting on boot
rc-update add crond

# Run 'docker system prune' every 10 minutes as 'docker' user
echo '*/10 * * * * docker system prune -a -f --filter until=1m' | crontab -u docker -
