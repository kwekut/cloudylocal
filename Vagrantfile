Vagrant.configure(2) do |config|

    config.vm.define :mgmt1 do |mgmt_config|
      mgmt_config.vm.box = "ubuntu/trusty64"
      mgmt_config.vm.hostname = "mgmt1"
      mgmt_config.vm.synced_folder Dir.getwd + "/vagrant/sync", "/home/vagrant/sync", nfs: true, create: true
      mgmt_config.vm.network :private_network, ip: "192.168.33.19"
      mgmt_config.vm.provision :shell, path: "bootstrap-mgmt.sh"
    end

    config.vm.define "slave3" do |node|
        node.vm.box = "bento/centos-7.1"
        node.vm.hostname = "slave3"
        node.vm.network :private_network, ip: "192.168.33.23"
        node.vm.provision :shell, path: "bootstrap-servers.sh"
        node.vm.provider "virtualbox" do |vb|
          vb.memory = "6144"
        end
    end

    config.vm.define "slave1" do |node|
        node.vm.box = "bento/centos-7.1"
        node.vm.hostname = "slave1"
        node.vm.network :private_network, ip: "192.168.33.21"
        node.vm.provision :shell, path: "bootstrap-servers.sh"
        node.vm.provider "virtualbox" do |vb|
          vb.memory = "4096"
        end
    end
end