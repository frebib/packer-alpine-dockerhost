# [Alpine Linux](http://alpinelinux.org) VM with Docker

* Minimal linux distro
* Good for Docker containers [library/alpine](https://hub.docker.com/_/alpine)

## Building

You may find that the timings aren't long enough so increase the `<wait ..>` blocks in the `alpine-3.6-x86_64.json` file.

If building on a server or in a non-X environment, set `headless: true` to prevent VNC window errors.

```bash
PACKER_KEY_INTERVAL=10ms packer-io build alpine-3.6-x86_64.json
```
