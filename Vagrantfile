Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision "shell", path: "provision.sh"

  unless Vagrant.has_plugin?("vagrant_hostupdater")
    config.vm.hostname = "dev.www"
  end

  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.network "forwarded_port", guest: 80, host: 8888

  config.vm.synced_folder ".", "/srv/www", :nfs => true
end