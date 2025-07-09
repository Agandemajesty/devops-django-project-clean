Vagrant.configure("2") do |config|
  # 1. Which box to use
  config.vm.box = "ubuntu/focal64"

  # 2. (Optional) A hostname for the VM
  config.vm.hostname = "devops-django"

  # 3. **Your private‑network setting goes right here:**
  # config.vm.network "private_network", ip: "192.168.56.10"

 # Forward host port 8000 to guest port 8000
  config.vm.network "forwarded_port", guest: 8000, host: 8000

  # 4. VM resources
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.cpus   = 2
  end

  # 5. Provisioning script
  config.vm.provision "shell", path: "provision.sh"
end

