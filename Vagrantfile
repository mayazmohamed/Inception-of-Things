Vagrant.configure("2") do |config|
  config.vm.define "momayazS" do |s|
    s.vm.box = "debian/bookworm64"  
    s.vm.network "private_network", ip: "192.168.56.110"
    s.vm.hostname = "momayazS"

    s.vm.provider "virtualbox" do |vb|
      vb.name = 'momayaz'
      vb.memory = 1024  
      vb.cpus = 1
    end

    s.vm.synced_folder "/Users/momayaz/Desktop", "/home/vagrant"
    s.vm.provision "shell", path: "script.sh", args: ["momayazS"]
  end

  config.vm.define "iqessam" do |sw|
    sw.vm.box = "debian/bookworm64"  
    sw.vm.network "private_network", ip: "192.168.56.111"
    sw.vm.hostname = "iqessamSW"

    sw.vm.provider "virtualbox" do |vb|
      vb.name = 'iqessam'
      vb.memory = 1024  
      vb.cpus = 1
    end

      sw.vm.synced_folder "/Users/momayaz/Desktop", "/home/vagrant"
      sw.vm.provision "shell", path: "script.sh", args: ["iqessamSW"]
  end
end
