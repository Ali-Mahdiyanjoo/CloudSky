#!/bin/bash

## that was for ubuntu 18.04 bionic ##

sudo apt update
sudo apt install mysql-server
sudo systemctl enable mysql.service
sudo systemctl start mysql.service

## that was for ubuntu 20.04 focal ##

sudo apt update
sudo apt install mysql-server
sudo systemctl enable mysql.service
sudo systemctl start mysql.service