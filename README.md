# Power Supply

Power Supply is a rails based web interface to control your power sockets with a raspberry pi.
###  Features:
- control your power sockets with the browser of your choice
- add & edit sockets without touching config files on your raspberry pi
- user authentication: only registered users can control
- responsive design

### Required Hardware
- Raspberry Pi2 or newer
- 434 Mhz transmitter
- radio controlled power sockets

### Required Software
- stable ruby & rails installation
- wiringPi
- RaspberryRemote

### Installation
If you already installed the required software please proceed with step _4. Power Supply_

##### 1. Ruby & Rails
There are several ways to install R&R on your RPi. The easiest way for me is to use the ruby version manager (RVM). Fist we update the RPi, then we install some dependencies and finally we use rvm to install R&R.
```sh
$ sudo apt-get update && sudo apt-get upgrade
```
```sh
$ sudo apt-get install -y git curl zlib1g-dev subversion openssl libreadline6-dev git-core zlib1g libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf automake libtool bison
```
```sh
$ curl -L get.rvm.io | bash -s stable --rails
```
##### 2. WiringPi
WiringPi is a GPIO access library for your RPi and is needed for Raspberry Remote to communicate with the transmitter.
```sh
$ cd ~ && git clone git://git.drogon.net/wiringPi
$ cd wiringPi && ./build
```
##### 3. Raspberry Remote
Now we install Raspberry Remote an application that sends switch commands to your sockets.

```sh
$ cd ~ && git clone git://github.com/xkonni/raspberry-remote.git
$ cd raspberry-remote && make send
```

##### 4. Power Supply
To install the Power Supply application, just clone this repository and bundle the project.
```sh
$ cd ~ && git clone https://github.com/ericelric/Power-Supply.git
$ cd Power-Supply && bundle install
```

### Usage

If you first run the application please check if the raspberry-remote-path in [powers_controller.rb](https://github.com/ericelric/Power-Supply/blob/master/app/controllers/powers_controller.rb#L2) is correct and if you need sudo privileges to for the send command.
