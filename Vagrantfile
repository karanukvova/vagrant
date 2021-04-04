Vagrant.configure("2") do |config|
 config.vm.define "name.local" do |subconfig|
  subconfig.vm.box = "bento/ubuntu-18.04"
  subconfig.vm.hostname = "name.local"
  subconfig.vm.network :private_network, ip: "192.168.56.60"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cableconnected0", "on"]
    vb.memory = "2000"
    vb.gui = true
    # vb.cpus = 2
  end
 end
end
