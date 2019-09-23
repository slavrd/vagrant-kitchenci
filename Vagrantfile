Vagrant.configure("2") do |config|

  config.vm.box = "slavrd/bionic64-ruby-dev"

  config.vm.provision "shell", path: "scripts/install-hc-tools.sh", privileged: false

  # set sync folder if provided
  if "#{ENV['PROJ_PATH']}" != ""
    config.vm.synced_folder ENV['PROJ_PATH'], "/home/vagrant/dev-project"
  end

  # copy .terraformrc if exist on the host
  if FileTest.exist?("#{ENV["HOME"]}/.terraformrc")
    config.vm.provision "file", source: "~/.terraformrc", destination: ".terraformrc"
  elsif FileTest.exist?("#{ENV["APPDATA"]}/terraform.rc")
    config.vm.provision "file", source: "#{ENV["APPDATA"]}/terraform.rc", destination: ".terraformrc"
  end

  # copy AWS credentials file if exists on the host
  config.vm.provision "shell", inline: "[ ! -d /home/vagrant/.aws ] && mkdir /home/vagrant/.aws && chown vagrant:vagrant /home/vagrant/.aws || exit 0"
  if FileTest.exist?("#{ENV["HOME"]}/.aws/credentials")
    config.vm.provision "file", source: "#{ENV["HOME"]}/.aws/credentials", destination: "/home/vagrant/.aws/credentials"
  elsif FileTest.exist?("#{ENV["USERPROFILE"]}/.aws/credentials")
    config.vm.provision "file", source: "#{ENV["USERPROFILE"]}/.aws/credentials", destination: "/home/vagrant/.aws/credentials"
  end

end
