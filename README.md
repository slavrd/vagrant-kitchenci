# Vagrant KitchenCI

A Vagrant project that brings up a VM with `rbenv`, `terraform` and `vagrant` installed. No `KitchenCI` related gems are installed as they should be specified for each project which will be tested.

If `.terraformrc` or AWS shared `credentials` file exist in their default locations on the host they will be copied to the VM as well.

## Prerequisites

* Install VirtualBox - [instructions](https://www.virtualbox.org/wiki/Downloads)
* Install Vagrant - [instructions](https://www.vagrantup.com/downloads.html)

## Run

* Build machine - `vagrant up`
* Destroy machine - `vagrant destroy`
