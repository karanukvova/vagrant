Vagrant.configure("2") do |config|
 config.vm.define "name1.local" do |subconfig|
  subconfig.vm.box = "bento/ubuntu-18.04"
  subconfig.vm.hostname = "name1.local"
  subconfig.vm.network :private_network, ip: "192.168.56.60"
  id_rsa_pub = File.read("#{Dir.home}/.ssh/id_rsa.pub") 
  subconfig.vm.provision "shell", inline: <<-SHELL
    echo \"#id_rsa_pub\" >> /home/vagrant/.ssh/authorized_keys
   SHELL
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cableconnected0", "on"]
    vb.memory = "1500"
    vb.gui = true
    # vb.cpus = 2
  end
 end
 config.vm.define "name1.local" do |subconfig|
  subconfig.vm.box = "bento/ubuntu-18.04"
  subconfig.vm.hostname = "name1.local"
  subconfig.vm.network :private_network, ip: "192.168.56.60"
  id_rsa_pub = File.read("#{Dir.home}/.ssh/id_rsa.pub")
  subconfig.vm.provision "shell", inline: <<-SHELL
    echo \"#id_rsa_pub\" >> /home/vagrant/.ssh/authorized_keys
   SHELL
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cableconnected0", "on"]
    vb.memory = "1500"
    vb.gui = true
    # vb.cpus = 2
  end
 end
 config.vm.define "name1.local" do |subconfig|
  subconfig.vm.box = "bento/ubuntu-18.04"
  subconfig.vm.hostname = "name1.local"
  subconfig.vm.network :private_network, ip: "192.168.56.60"
  id_rsa_pub = File.read("#{Dir.home}/.ssh/id_rsa.pub")
  subconfig.vm.provision "shell", inline: <<-SHELL
    echo \"#id_rsa_pub\" >> /home/vagrant/.ssh/authorized_keys
   SHELL
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cableconnected0", "on"]
    vb.memory = "1500"
    vb.gui = true
    # vb.cpus = 2
  end
 end

end

