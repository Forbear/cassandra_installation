Vagrant.configure("2") do |conf|
  conf.vm.box = "centos/7"
  conf.vm.define "node0" do |node|
    node.vm.network "public_network", ip: "192.168.0.150", bridge: "wlp7s0"
  end
  conf.vm.define "node1" do |node|
    node.vm.network "public_network", ip: "192.168.0.151", bridge: "wlp7s0"
  end
  conf.vm.define "node2" do |node|
    node.vm.network "public_network", ip: "192.168.0.152", bridge: "wlp7s0"
  end
end
