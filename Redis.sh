#!/bin/bash

sudo apt update
sudo apt install redis-server
sudo systemctl enable redis-server.service
sydi systemctl start redis-server.service