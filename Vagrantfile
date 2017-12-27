# -*- mode: ruby -*-
# vi: set ft=ruby :

default_box = 'vEOS-lab-4.18.1F'

Vagrant.configure(2) do |config|
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "./helper_scripts/empty_playbook.yml"
    ansible.groups = {
      "leaf" => ["leaf-1","leaf-3","leaf-2","leaf-5","leaf-4","leaf-6",],
      "spine" => ["spine-1","spine-2",],
      "host" => ["server-4","server-2","server-3","server-1","server-6","server-5",],
      "edge" => ["edge-2","edge-1",],
      "network:children" => ["leaf","spine","edge",]
    }
  end

  config.trigger.after :destroy do
     puts "Removing known host entries"
     `rm -f ~/.ssh/known_hosts`
  end

  config.vm.define 'spine-1' do |spine01|
    spine01.vm.box = default_box
    spine01.vm.network 'private_network',
                       virtualbox__intnet: 's01l01',
                       ip: '169.254.1.11', auto_config: false
    spine01.vm.network 'private_network',
                       virtualbox__intnet: 's01l02',
                       ip: '169.254.1.11', auto_config: false
    spine01.vm.network 'private_network',
                       virtualbox__intnet: 's01l03',
                       ip: '169.254.1.11', auto_config: false
    spine01.vm.network 'private_network',
                       virtualbox__intnet: 's01l04',
                       ip: '169.254.1.11', auto_config: false
    spine01.vm.network 'private_network',
                       virtualbox__intnet: 's01l05',
                       ip: '169.254.1.11', auto_config: false                                              
    spine01.vm.network 'private_network',
                       virtualbox__intnet: 's01l06',
                       ip: '169.254.1.11', auto_config: false
    spine01.vm.network 'private_network',
                       virtualbox__intnet: 's01e01',
                       ip: '169.254.1.11', auto_config: false
    spine01.vm.network 'private_network',
                       virtualbox__intnet: 's01e02',
                       ip: '169.254.1.11', auto_config: false                       
  config.vbguest.auto_update = false
  end

  config.vm.define 'spine-2' do |spine02|
    spine02.vm.box = default_box
    spine02.vm.network 'private_network',
                       virtualbox__intnet: 's02l01',
                       ip: '169.254.1.11', auto_config: false
    spine02.vm.network 'private_network',
                       virtualbox__intnet: 's02l02',
                       ip: '169.254.1.11', auto_config: false
    spine02.vm.network 'private_network',
                       virtualbox__intnet: 's02l03',
                       ip: '169.254.1.11', auto_config: false
    spine02.vm.network 'private_network',
                       virtualbox__intnet: 's02l04',
                       ip: '169.254.1.11', auto_config: false
    spine02.vm.network 'private_network',
                       virtualbox__intnet: 's02l05',
                       ip: '169.254.1.11', auto_config: false                                              
    spine02.vm.network 'private_network',
                       virtualbox__intnet: 's02l06',
                       ip: '169.254.1.11', auto_config: false
    spine02.vm.network 'private_network',
                       virtualbox__intnet: 's02e01',
                       ip: '169.254.1.11', auto_config: false
    spine02.vm.network 'private_network',
                       virtualbox__intnet: 's02e02',
                       ip: '169.254.1.11', auto_config: false  
  config.vbguest.auto_update = false
  end

  config.vm.define 'leaf-1' do |leaf01|
    leaf01.vm.box = default_box
    leaf01.vm.network 'private_network',
                       virtualbox__intnet: 's01l01',
                       ip: '169.254.1.11', auto_config: false
    leaf01.vm.network 'private_network',
                       virtualbox__intnet: 's02l01',
                       ip: '169.254.1.11', auto_config: false
    leaf01.vm.network 'private_network',
                       virtualbox__intnet: 'l01l02',
                       ip: '169.254.1.11', auto_config: false
  config.vbguest.auto_update = false
  end

  config.vm.define 'leaf-2' do |leaf02|
    leaf02.vm.box = default_box
    leaf02.vm.network 'private_network',
                       virtualbox__intnet: 's01l02',
                       ip: '169.254.1.11', auto_config: false
    leaf02.vm.network 'private_network',
                       virtualbox__intnet: 's02l02',
                       ip: '169.254.1.11', auto_config: false
    leaf02.vm.network 'private_network',
                       virtualbox__intnet: 'l02l01',
                       ip: '169.254.1.11', auto_config: false
  config.vbguest.auto_update = false
  end
  
  config.vm.define 'leaf-3' do |leaf03|
    leaf03.vm.box = default_box
    leaf03.vm.network 'private_network',
                       virtualbox__intnet: 's01l03',
                       ip: '169.254.1.11', auto_config: false
    leaf03.vm.network 'private_network',
                       virtualbox__intnet: 's02l03',
                       ip: '169.254.1.11', auto_config: false
    leaf03.vm.network 'private_network',
                       virtualbox__intnet: 'l03l04',
                       ip: '169.254.1.11', auto_config: false
  config.vbguest.auto_update = false
  end

  config.vm.define 'leaf-4' do |leaf04|
    leaf04.vm.box = default_box
    leaf04.vm.network 'private_network',
                       virtualbox__intnet: 's01l04',
                       ip: '169.254.1.11', auto_config: false
    leaf04.vm.network 'private_network',
                       virtualbox__intnet: 's02l04',
                       ip: '169.254.1.11', auto_config: false
    leaf04.vm.network 'private_network',
                       virtualbox__intnet: 'l04l03',
                       ip: '169.254.1.11', auto_config: false
  config.vbguest.auto_update = false
  end

  config.vm.define 'leaf-5' do |leaf05|
    leaf05.vm.box = default_box
    leaf05.vm.network 'private_network',
                       virtualbox__intnet: 's01l05',
                       ip: '169.254.1.11', auto_config: false
    leaf05.vm.network 'private_network',
                       virtualbox__intnet: 's02l05',
                       ip: '169.254.1.11', auto_config: false
    leaf05.vm.network 'private_network',
                       virtualbox__intnet: 'l05l06',
                       ip: '169.254.1.11', auto_config: false
  config.vbguest.auto_update = false
  end

  config.vm.define 'leaf-6' do |leaf06|
    leaf06.vm.box = default_box
    leaf06.vm.network 'private_network',
                       virtualbox__intnet: 's01l06',
                       ip: '169.254.1.11', auto_config: false
    leaf06.vm.network 'private_network',
                       virtualbox__intnet: 's02l06',
                       ip: '169.254.1.11', auto_config: false
    leaf06.vm.network 'private_network',
                       virtualbox__intnet: 'l06l05',
                       ip: '169.254.1.11', auto_config: false
  config.vbguest.auto_update = false
  end  
  
  config.vm.define 'edge-1' do |edge01|
    edge01.vm.box = default_box
    edge01.vm.network 'private_network',
                       virtualbox__intnet: 's01e01',
                       ip: '169.254.1.11', auto_config: false
    edge01.vm.network 'private_network',
                       virtualbox__intnet: 's02e01',
                       ip: '169.254.1.11', auto_config: false
    edge01.vm.network 'private_network',
                       virtualbox__intnet: 'e01e02',
                       ip: '169.254.1.11', auto_config: false
  config.vbguest.auto_update = false
  end

  config.vm.define 'edge-2' do |edge02|
    edge02.vm.box = default_box
    edge02.vm.network 'private_network',
                       virtualbox__intnet: 's01e02',
                       ip: '169.254.1.11', auto_config: false
    edge02.vm.network 'private_network',
                       virtualbox__intnet: 's02e02',
                       ip: '169.254.1.11', auto_config: false
    edge02.vm.network 'private_network',
                       virtualbox__intnet: 'e02e01',
                       ip: '169.254.1.11', auto_config: false
  config.vbguest.auto_update = false
  end  
  
end
