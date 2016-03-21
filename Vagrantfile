# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box      = 'ubuntu/trusty64'

  # Port Forwarding
  config.ssh.forward_agent = true
  config.vm.network :forwarded_port, guest: 3000, host: 3000 # Rails
  config.vm.network :forwarded_port, guest: 1080, host: 1080 # Mailcatcher
  
  # Configure the box
  config.vm.provision :shell, path: 'install-bootstrap.sh', keep_color: true
  config.vm.provision :shell, path: 'install-rvm.sh', args: 'stable', privileged: false
  config.vm.provision :shell, path: 'install-ruby.sh', args: '2.2.4 bundler mailcatcher', privileged: false
  
  config.vm.provider 'virtualbox' do |v|
    v.memory = 2048
    v.cpus = 4
  end
end
