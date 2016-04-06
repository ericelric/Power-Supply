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

##### 1. Ruby & Rails

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
```sh
$ cd /opt && sudo git clone git://git.drogon.net/wiringPi
$ cd wiringPi && sudo ./build
```
##### 3. Raspberry Remote
```sh
$ cd /opt && sudo git clone git://github.com/xkonni/raspberry- remote.git
$ cd raspberry-remote && sudo make send
```


### Development

Want to contribute? Great!
