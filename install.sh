#!/bin/bash
mkdir ~/ardbin/
cp ard-upload ~/ardbin
cp make-uno ~/ardbin
chmod +x ~/ardbin/ard-upload
chmod +x ~/ardbin/make-uno
echo "export PATH=\$PATH:~/ardbin" >> ~/.bashrc
