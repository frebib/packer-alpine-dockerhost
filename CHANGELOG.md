## [Alpine Linux](http://alpinelinux.org) v3.6

* x86_64
* virtual install
* no VBoxGuestAdditions
* [Packer template](https://github.com/maier/packer-templates/)

## Use

#### Install the [vagrant-alpine](https://github.com/maier/vagrant-alpine) guest plugin.

```
vagrant plugin install vagrant-alpine
```

#### Create a `Vagrantfile`:

```
vagrant init maier/alpine-3.6-x86_64
```

or

Make a copy of the example [Vagrantfile](https://github.com/maier/packer-templates/blob/master/alpine3.6/Vagrantfile) supplied with this repository.

#### Edit the Vagrantfile to customize for your needs.

* Networking (Until VBGA support)
   * Add a static private network interface to use shared folders.
      * e.g. `alpine.vm.network "private_network", ip: "192.168.200.10"`
* Shared folders (Until VBGA support)
   * Disable default share if not using shared folders so Vagrant will not block attempting to mount the volume.
      * `config.vm.synced_folder '.', '/vagrant', disabled: true`
   * Enable synced folders with `type: 'nfs'`, **requires** static address on private network interface to function.

#### Start the box:

```
vagrant up
```

## Changes

* v1.0.0
   * Initial -- Alpine v3.6.0
