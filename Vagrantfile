# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box      = 'ubuntu/trusty64'
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true
  config.vm.provision :shell, path: 'install-rvm.sh', args: 'stable', privileged: false
  config.vm.provision :shell, path: 'install-ruby.sh', args: '2.2.2 bundler', privileged: false
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end
end
