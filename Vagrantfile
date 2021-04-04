Vagrant.configure("2") do |config|
 config.vm.define "name1.local" do |subconfig|
  subconfig.vm.box = "bento/ubuntu-18.04"
  subconfig.vm.hostname = "name1.local"
  subconfig.vm.network :private_network, ip: "192.168.56.60"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cableconnected0", "on"]
    vb.memory = "1500"
    vb.gui = true
    # vb.cpus = 2
  end
 end
 config.vm.define "name2.local" do |subconfig|
  subconfig.vm.box = "bento/ubuntu-18.04"
  subconfig.vm.hostname = "name2.local"
  subconfig.vm.network :private_network, ip: "192.168.56.61"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cableconnected0", "on"]
    vb.memory = "1500"
    vb.gui = true
    # vb.cpus = 2
  end
 end

end
