Vagrant.configure("2") do |config|
# config.vm.define "name1.local" do |subconfig|
#  subconfig.vm.box = "bento/ubuntu-18.04"
#  subconfig.vm.hostname = "name1.local"
#  subconfig.vm.network :private_network, ip: "192.168.56.60"
#  id_rsa_pub = File.read("#{Dir.home}/.ssh/id_rsa.pub") 
#  subconfig.vm.provision "shell", inline: <<-SHELL
#    echo \"#id_rsa_pub\" >> /home/vagrant/.ssh/authorized_keys
#   SHELL
#  config.vm.provider :virtualbox do |vb|
#    vb.customize ["modifyvm", :id, "--cableconnected0", "on"]
#    vb.memory = "1500"
#    vb.gui = true
    # vb.cpus = 2
#   end
#  subconfig.vm.provision "shell", inline: <<-SHELL
#   echo '192.168.56.60 puppetserver' >> /etc/hosts
#   echo '192.168.56.61 puppetagent1' >> /etc/hosts
#   echo '192.168.56.62 puppetagent2' >> /etc/hosts
#   apt-get update -y
#   apt-get install -y curl 
#   curl -O https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
#   dpkg -i puppetlabs-release-pc1-xenial.deb
#   apt-get update
#   apt-get install -y puppetserver
#   apt-get install -y ntp
#   sed -i 's/.*JAVA_ARGS.*/JAVA_ARGS="-Xms512m -Xmx512m"/' /etc/default/puppetserver
#   echo '[agent]' >>/etc/puppetlabs/puppet/puppet.conf
#   systemctl start puppetserver
#  SHELL
#  subconfig.vm.provision "file", source: "/home/vova/.ssh/id_rsa.pub", destination: "~/.ssh/authorized_keys"
# end 
 config.vm.define "name2.local" do |subconfig|
  subconfig.vm.box = "bento/ubuntu-18.04"
  subconfig.vm.hostname = "name2.local"
  subconfig.vm.network :private_network, ip: "192.168.56.61"
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
  subconfig.vm.provision "shell", inline: <<-SHELL
  echo '192.168.56.60 puppetserver' >> /etc/hosts
  echo '192.168.56.61 puppetagent1' >> /etc/hosts
  apt-get update -y
  apt-get install -y curl
  curl -O https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
  dpkg -i puppetlabs-release-pc1-xenial.deb
  apt-get update 
  apt-get install -y puppet-agent
  apt-get install -y ntp
  echo 'certname = 'puppetagent1'' >> /etc/puppetlabs/puppet/puppet.conf
  echo 'server = puppetserver' >> /etc/puppetlabs/puppet/puppet.conf
  echo 'runinterval=100' >> /etc/puppetlabs/puppet/puppet.conf
  systemctl start puppet
  SHELL
  subconfig.vm.provision "file", source: "/home/vova/.ssh/id_rsa.pub", destination: "~/.ssh/authorized_keys"
 end
 config.vm.define "name3.local" do |subconfig|
  subconfig.vm.box = "bento/ubuntu-18.04"
  subconfig.vm.hostname = "name3.local"
  subconfig.vm.network :private_network, ip: "192.168.56.62"
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
  subconfig.vm.provision "shell", inline: <<-SHELL
  echo '192.168.56.60 puppetserver' >> /etc/hosts
  echo '192.168.56.62 puppetagent2' >> /etc/hosts
  apt-get update -y
  apt-get install -y curl
  apt-get update -y
  curl -O https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
  dpkg -i puppetlabs-release-pc1-xenial.deb
  apt-get update
  apt-get install -y puppet-agent
  apt-get install -y ntp
  echo 'certname = 'puppetagent2'' >> /etc/puppetlabs/puppet/puppet.conf
  echo 'server = puppetserver' >> /etc/puppetlabs/puppet/puppet.conf
  echo 'runinterval=100' >> /etc/puppetlabs/puppet/puppet.conf
  systemctl start puppet
  SHELL
  subconfig.vm.provision "file", source: "/home/vova/.ssh/id_rsa.pub", destination: "~/.ssh/authorized_keys"
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
  subconfig.vm.provision "shell", inline: <<-SHELL
   echo '192.168.56.60 puppetserver' >> /etc/hosts
   echo '192.168.56.61 puppetagent1' >> /etc/hosts
   echo '192.168.56.62 puppetagent2' >> /etc/hosts
   apt-get update -y
   apt-get install -y curl
   curl -O https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
   dpkg -i puppetlabs-release-pc1-xenial.deb
   apt-get update
   apt-get install -y puppetserver
   apt-get install -y ntp
   sed -i 's/.*JAVA_ARGS.*/JAVA_ARGS="-Xms512m -Xmx512m"/' /etc/default/puppetserver
   echo '[agent]' >>/etc/puppetlabs/puppet/puppet.conf
   systemctl start puppetserver
   sleep 60
   /opt/puppetlabs/bin/puppet cert list
   /opt/puppetlabs/bin/puppet cert sign --all
   puppet module install puppetlabs-apt -v 4.2.0 --force --verbose --debug
  SHELL
   subconfig.vm.provision "file", source: "/home/vova/vagrant/protocol.pp", destination: "~/manifests/protocol.pp"
   subconfig.vm.provision "file", source: "/home/vova/.ssh/id_rsa.pub", destination: "~/.ssh/authorized_keys"
   end 

end

