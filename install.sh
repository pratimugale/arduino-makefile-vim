#!/bin/bash
cp -r .arduino_mk ~/
mkdir ~/ardbin/
cp ard-upload ~/ardbin
cp makefile-uno ~/ardbin
chmod +x ~/ardbin/ard-upload
chmod +x ~/ardbin/makefile-uno
echo "export PATH=\$PATH:~/ardbin" >> ~/.bashrc
cd
. ~/.bashrc
