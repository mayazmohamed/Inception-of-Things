# Vagrant.configure("2") do |config|
#   config.vm.define "controller" do |controller|
#     controller.vm.box = "debian/bookworm64"
#     controller.vm.network "private_network", ip: "192.168.56.110"
#     controller.vm.hostname = 'momayazS'
#     controller.vm.provider "virtualbox" do |vb|
#       vb.name = 'momayaz'
#       vb.cpus = '1'
#       vb.memory = '1024'
#     end
#     controller.vm.synced_folder "/Users/momayaz/Desktop", "/home/vagrant"

#     controller.vm.provision "shell", path: "script.sh"
#   end

#   config.vm.define "agent" do |agent|
#     agent.vm.box = "debian/bookworm64"
#     agent.vm.network "private_network", ip: "192.168.56.111"
#     agent.vm.hostname = 'momayazSW'
#     agent.vm.provider "virtualbox" do |vb|
#       vb.name = 'iqessam'
#       vb.cpus = '1'
#       vb.memory = '1024'
#     end
#     agent.vm.synced_folder "/Users/momayaz/Desktop", "/home/vagrant"
#     agent.vm.provision "shell", path: "script.sh"

#     # agent.ssh.private_key_path = "~/.vagrant.d/insecure_private_key"
#   end
# end


Vagrant.configure("2") do |config|
  config.vm.define "momayazS" do |s|
    s.vm.box = "debian/bookworm64"  
    s.vm.network "private_network", type: "dhcp"
    s.vm.network "private_network", type: "static", ip: "192.168.56.110"
    s.vm.hostname = "momayazS"

    s.vm.provider "virtualbox" do |vb|
      vb.memory = 1024  
      vb.cpus = 1
    end

    s.vm.synced_folder "/Users/momayaz/Desktop", "/home/vagrant"
    s.vm.provision "shell", path: "script.sh"
  end

  config.vm.define "iqessam" do |sw|
    sw.vm.box = "debian/bookworm64"  
    sw.vm.network "private_network", type: "dhcp"
    sw.vm.network "private_network", type: "static", ip: "192.168.56.111"
    sw.vm.hostname = "iqessamSW"

    sw.vm.provider "virtualbox" do |vb|
      vb.memory = 1024  
      vb.cpus = 1
    end

      sw.vm.synced_folder "/Users/momayaz/Desktop", "/home/vagrant"
    sw.vm.provision "shell", path: "script.sh"
  end
end
