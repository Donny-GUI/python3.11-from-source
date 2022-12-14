#!/bin/bash


update (){
	sudo apt-get update && sudo apt-get upgrade
}

dependencies (){
	sudo apt install build-essential wget zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
}

download_latest (){
	cd /tmp && wget https://www.python.org/ftp/python/3.11.1/Python-3.11.1.tgz 
}

install_python (){
	cd /tmp &&/
	 tar -xf /tmp/Python-3.11.1.tgz
	sleep 3
	cd /tmp/Python-3.11.1 &&/
	 ./configure --enable-optimizations &&/
	 sudo make install
}


echo "\033[32mupdating...\033[0m"
update
echo "\033[32mgetting dependencies...\033[0m"
dependencies
echo "\033[32mdownloading...\033[0m"
download_latest
echo "\033[32minstalling...\033[0m"
install_python
