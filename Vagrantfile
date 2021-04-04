Vagrant.configure("2") do |config|
 config.vm.define "test1" do |subconfig|
  subconfig.vm.box = "bento/ubuntu-16.04"
  subconfig.vm.provision "shell", inline: <<-SHELL
  echo 192.168.59.48 test1 >> /etc/hosts
  echo test1 > /etc/hostname
  SHELL
  subconfig.vm.hostname = "test1"
  subconfig.vm.network "private_network", ip: "192.168.59.48",
  virtualbox__intnet: true
  config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--cableconnected0", "on"]
        vb.name = "vm_1"
        vb.memory = "1536"
  end
 end 
end
