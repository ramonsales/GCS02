Vagrant.configure("2") do |config|
  #db virtual machine
  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/trusty64"
    db.vm.network :forwarded_port, guest: 5432, host: 5432
    db.vm.network "private_network", ip: "192.168.1.11"

    db.vm.provider "virtualbox" do |vb|
      vb.name = "dj-database"
      vb.gui = false
      vb.memory = "512"
    end

    db.vm.provision "shell", path: "db.sh"
  end

  #web virtual machine
  config.vm.define "web" do |web|
    web.vm.box = "ubuntu/trusty64"
    web.vm.network :forwarded_port, guest:8000, host:8000
    web.vm.network "private_network", ip: "192.168.1.10"

    web.vm.provider "virtualbox" do |vb|
      vb.name = "dj"
      vb.gui = false
      vb.memory = "512"
    end

    web.vm.provision "shell", path: "web.sh"
  end

end
