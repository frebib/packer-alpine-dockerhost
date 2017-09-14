# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.define 'alpine' do |alpine|
        alpine.vm.box = 'maier/alpine-3.6-x86_64'
        # alpine.ssh.username = 'vagrant'
        # alpine.ssh.password = 'vagrant'

        # NOTE:
        # 	there are *no* guest additions installed
        # 	for alpine linux - the guest additions
        # 	installer fails. once workarounds are
        # 	identified the vbga will be added
        # 	to the base box.
        #
        # since there are no vbga. if the vagrant-alpine plugin
        # is installed it can at least configure the system to
        # enable shared folders.
        #
        alpine.vm.synced_folder '.', '/vagrant', disabled: true
        #
        # after `vagrant plugin install vagrant-alpine`
        # comment the disabled synced_folder line above and
        # uncomment the following two lines
        #
        # alpine.vm.network 'private_network', ip: '192.168.100.10'
        # alpine.vm.synced_folder '.', '/vagrant', type: 'nfs'

        alpine.vm.provider 'virtualbox' do |vb|
            # vb.gui = true
            vb.name = 'Alpine'
            vb.cpus = 1
            vb.memory = 1024
            vb.customize [
                'modifyvm', :id,
                '--natdnshostresolver1', 'on',
                '--nic1', 'nat',
                '--cableconnected1', 'on'
            ]
        end
    end
end
