# OpenCache Development Environment #

[Vagrant](https://www.vagrantup.com)-based development environment for OpenCache.

Based on [Debian](https://debian.org) 7.0. Has the following tools installed:

* [Mininet](https://github.com/mininet/mininet) (installed using `-a`)
* [Floodlight](https://github.com/floodlight/floodlight)
* [Flowvisor](https://github.com/OPENNETWORKINGLAB/flowvisor)
* [OpenCache](https://github.com/broadbent/opencache)
* [Scootplayer](https://github.com/broadbent/scootplayer)

Also includes a number of development and build tools (such as `ant`, `openjdk-6-jdk`, `pip`, etc.)

*Please note:* the version of OpenCache included in this image is an [older version](https://github.com/broadbent/opencache) of the code, and *not* representitive of the newer [project](https://github.com/opencache-project). The Vagrant image will be updated to match these changes in due course; thank you for your patience in the meantime.


## Installation ##

To use the OpenCache Vagrant build, pull the latest version of this repository with `git pull`.

Then, simply use `vagrant up`. This will download the VM and start it. 

## Usage ##

Log in to the Vagrant box with `vagrant ssh`.

This will login with the `vagrant` user and password `vagrant`.

The root password is also set to `vagrant`, although `sudo` is installed and configured for the `vagrant` user.

To start a simple tree topology with four nodes, run the `simple.py` example:

```
sudo /vagrant/examples/simple/simple.py
```

Ensure a node is running on the host machine. Use another terminal and run `vagrant ssh` again. Start `floodlight` with:

```
cd floodlight && java -jar target/floodlight.jar
```

`h1` acts as the OpenCache controller:

```
 opencache -c --config=/vagrant/examples/simple/config/controller.conf
```

`h2` acts as an OpenCache node:

```
opencache -n --config=/vagrant/examples/simple/config/node.conf
```

You can now use the client utils included with OpenCache to control the small deployment. For example, run a simple HTTP server on `h3` and a client on `h4`. Using OpenCache, we can now redirect requests to `h3` to `h2` by adding the expression `10.0.0.3` to our running OpenCache controller.

## Update ##

To update the OpenCache development environment, simply use: 

```
git pull && vagrant box update
```

*Please note:* Preforming a ```git pull``` at this stage will result in the retrieval of old code. The repository included in the image is no longer maintained. The Vagrant image will be updated with the latest codebase in due course; thank you for your patience in the meantime.

## License ##

This software is licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).