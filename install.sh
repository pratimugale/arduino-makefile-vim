#!/bin/bash
cp -r .arduino_mk ~/
mkdir ~/ardbin/
cp ard-upload ~/ardbin
cp makefile-uno ~/ardbin
chmod +x ~/ardbin/ard-upload
chmod +x ~/ardbin/makefile-uno
echo "export PATH=\$PATH:~/ardbin" >> ~/.bashrc

#The following commands seem to have no effect and hence have to be done manually
#cd
#. ~/.bashrc
