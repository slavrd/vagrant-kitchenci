# Vagrant KitchenCI

A Vagrant project that brings up a VM with `rbenv`, `terraform` and `vagrant` installed. No `KitchenCI` related gems are installed as they should be specified for each project which will be tested.

If `.terraformrc` or AWS shared `credentials` file exist in their default locations on the host they will be copied to the VM as well.

A folder containing the project which will be tested can be synced to the Vagrant VM in `/home/vagrant/dev-project` folder by setting its path in `PROJ_PATH` environment variable.

## Prerequisites

* Install VirtualBox - [instructions](https://www.virtualbox.org/wiki/Downloads)
* Install Vagrant - [instructions](https://www.vagrantup.com/downloads.html)

## Run

* Set synced folder (optional):
  * on Linux/MAC - `export PROJ_PATH=/my/project/to/test`
  * on Windows powershell - `New-Item -Path env:\PROJ_PATH -Value 'path_to_my_project'`
* Build machine - `vagrant up`
* Destroy machine - `vagrant destroy`
