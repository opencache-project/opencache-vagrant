# OpenCache Development Environment #

[Vagrant](https://www.vagrantup.com)-based development environment for OpenCache.

Based on [Debian](https://debian.org) 7.0. Has the following tools installed:

* [Mininet](https://github.com/mininet/mininet) (installed using `-a`)
* [Floodlight](https://github.com/floodlight/floodlight)
* [Flowvisor](https://github.com/OPENNETWORKINGLAB/flowvisor)
* [OpenCache](https://github.com/broadbent/opencache)
* [Scootplayer](https://github.com/broadbent/scootplayer)

Also includes a number of development and build tools (such as `ant`, `openjdk-6-jdk`, `pip`, etc.)


## Installation ##

To use the OpenCache Vagrant build, simply use `vagrant up`.

## Usage ##

Log in to the Vagrant box with `vagrant ssh`.

This will login with the `vagrant` user and password `vagrant`.

The root password is also set to `vagrant`, although `sudo` is installed and configured for the `vagrant` user.

To start `mininet` with a full mesh topology (such as that in the [GÉANT OpenFlow Facility](http://www.geant.net/opencalls/Overview/Documents/Open%20Call%20Technical%20Annex%20B%20GEANT%20Openflow%20Testbed%20Facility%20FINAL.pdf)) use:

```
sudo mn --custom /home/vagrant/mininet/custom/mesh.py --topo mesh --mac --arp --switch ovsk --controller remote
```

## License ##

This sofware is licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).