#!/bin/bash
## that was for ubuntu 18.04 bionic ##


# sudo apt install -y wget
# wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
# if [ $? == 0 ]; then
#     echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
#     sudo apt-get update
#     sudo apt-get install -y mongodb-org
#     sudo systemctl enable mongod.service
#     sudo systemctl start mongod.service
#     sudo systemctl status mongod.service
#     if [ $? == 4 ]; then
#         sudo systemctl daemon-reload
#     fi
# else
#     sudo apt -y install gnupg
#     wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
#     echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
#     sudo apt-get update
#     sudo apt-get install -y mongodb-org
#     sudo systemctl enable mongod.service
#     sudo systemctl start mongod.service
#     sudo systemctl status mongod.service
#     if [ $? == 4 ]; then
#         sudo systemctl daemon-reload
#     fi
# fi

## that was for ubuntu 20.04 focal ##


# sudo apt install -y wget
# wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
# if [ $? == 0 ]; then
#     echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
#     sudo apt-get update
#     sudo apt-get install -y mongodb-org
#     sudo systemctl enable mongod.service
#     sudo systemctl start mongod.service
#     sudo systemctl status mongod.service
#     if [ $? == 4 ]; then
#         sudo systemctl daemon-reload
#     fi
# else
#     sudo apt -y install gnupg
#     wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
# echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
#     sudo apt-get update
#     sudo apt-get install -y mongodb-org
#     sudo systemctl enable mongod.service
#     sudo systemctl start mongod.service
#     sudo systemctl status mongod.service
#     if [ $? == 4 ]; then
#         sudo systemctl daemon-reload
#     fi
# fi