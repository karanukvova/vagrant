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
  subconfig.vm.network "private_network", ip: "192.168.56.61"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cableconnected0", "on"]
    vb.memory = "1500"
    vb.gui = true
    # vb.cpus = 2
   end
  subconfig.vm.provision "shell", inline: <<-SHELL
  echo '192.168.56.60 name1.local' >> /etc/hosts
  echo '192.168.56.61 name2.local' >> /etc/hosts
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4528B6CD9E61EF26
  apt-get update -y
  apt-get install -y curl
  curl -O https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
  dpkg -i puppetlabs-release-pc1-xenial.deb
  apt-get update -y
  apt-get install -y puppet-agent
#  apt-get install -y ntp
  echo 'certname = 'name2.local'' >> /etc/puppetlabs/puppet/puppet.conf
  echo 'server = name1.local' >> /etc/puppetlabs/puppet/puppet.conf
  echo 'runinterval=100' >> /etc/puppetlabs/puppet/puppet.conf
  systemctl start puppet
  SHELL
  subconfig.vm.provision "file", source: "/home/karanukvova/vagrant/id_rsa.pub", destination: "/home/vagrant/.ssh/authorized_keys"
  subconfig.vm.provision "file", source: "/home/karanukvova/vagrant/master", destination: "/tmp/master"
 end
 config.vm.define "name3.local" do |subconfig|
  subconfig.vm.box = "bento/ubuntu-18.04"
  subconfig.vm.hostname = "name3.local"
  subconfig.vm.network "private_network", ip: "192.168.56.62"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cableconnected0", "on"]
    vb.memory = "1500"
    vb.gui = true
    # vb.cpus = 2
   end
  subconfig.vm.provision "shell", inline: <<-SHELL
  echo '192.168.56.60 name1.local' >> /etc/hosts
  echo '192.168.56.62 name3.local' >> /etc/hosts
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4528B6CD9E61EF26
  apt-get update -y
  apt-get install -y curl
  apt-get update -y
  curl -O https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
  dpkg -i puppetlabs-release-pc1-xenial.deb
  apt-get update
  apt-get install -y puppet-agent
#  apt-get install -y ntp
  echo 'certname = 'name3.local'' >> /etc/puppetlabs/puppet/puppet.conf
  echo 'server = name1.local' >> /etc/puppetlabs/puppet/puppet.conf
  echo 'runinterval=100' >> /etc/puppetlabs/puppet/puppet.conf
  systemctl start puppet
  SHELL
  subconfig.vm.provision "file", source: "/home/karanukvova/vagrant/id_rsa.pub", destination: "/home/vagrant/.ssh/authorized_keys"
  subconfig.vm.provision "file", source: "/home/karanukvova/vagrant/master", destination: "/tmp/master"
 end

 config.vm.define "name1.local" do |subconfig|
  subconfig.vm.box = "bento/ubuntu-18.04"
  subconfig.vm.hostname = "name1.local"
  subconfig.vm.network "private_network", ip: "192.168.56.60"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cableconnected0", "on"]
    vb.memory = "1500"
    vb.gui = true
    # vb.cpus = 2
   end
  subconfig.vm.provision "shell", inline: <<-SHELL
   echo '192.168.56.60 name1.local' >> /etc/hosts
   echo '192.168.56.61 name2.local' >> /etc/hosts
   echo '192.168.56.62 name3.local' >> /etc/hosts
   sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4528B6CD9E61EF26
   apt-get update -y
   apt-get install -y curl
   curl -O https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
   dpkg -i puppetlabs-release-pc1-xenial.deb
   apt-get update
   apt-get install -y puppetserver
#  apt-get install -y ntp
   sed -i 's/.*JAVA_ARGS.*/JAVA_ARGS="-Xms512m -Xmx512m"/' /etc/default/puppetserver
   echo '[main]' >>  /etc/puppetlabs/puppet/puppet.conf
                        echo 'certname = name1.local' >>  /etc/puppetlabs/puppet/puppet.conf
                        echo 'server = name1.local' >>  /etc/puppetlabs/puppet/puppet.conf
   echo '[agent]' >>/etc/puppetlabs/puppet/puppet.conf
   echo 'runinterval=100' >> /etc/puppetlabs/puppet/puppet.conf 
   systemctl start puppetserver
   sleep 120
   /opt/puppetlabs/bin/puppet cert list
   /opt/puppetlabs/bin/puppet cert sign --all
   /opt/puppetlabs/bin/puppet module install puppetlabs-stdlib --version 4.21.0
   /opt/puppetlabs/bin/puppet module install puppetlabs-apt -v 4.2.0
  SHELL
   subconfig.vm.provision "file", source: "/home/karanukvova/vagrant/id_rsa.pub", destination: "/home/vagrant/.ssh/authorized_keys"
   subconfig.vm.provision "file", source: "/home/karanukvova/vagrant/master", destination: "/tmp/master"
   subconfig.vm.provision "shell",
   inline: "mv /tmp/master/name2.pp /etc/puppetlabs/code/environments/production/manifests/name2.pp"
   subconfig.vm.provision "shell",
   inline: "mv /tmp/master/name3.pp /etc/puppetlabs/code/environments/production/manifests/name3.pp"
   subconfig.vm.provision "shell",
   inline: "mv /tmp/master/name1.pp /etc/puppetlabs/code/environments/production/manifests/name1.pp"
   subconfig.vm.provision "shell", inline: <<-SHELL
   /opt/puppetlabs/bin/puppet agent --test
      SHELL

   end 

end

