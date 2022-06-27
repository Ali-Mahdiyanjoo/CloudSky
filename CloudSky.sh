#!/bin/bash

whiptail --msgbox "Welcome to CloudSky service installeer :))" 10 100 # It will make welcome intro

CHOSE_OS=$(whiptail --menu "Choose an option" 15 80 5 \
  "Ubuntu 18.04" ""\
  "Ubuntu 20.04" "" 3>&1 1>&2 2>&3) # This would make a selectable list for chosing os version or distro

if [ "$CHOSE_OS" == "Ubuntu 18.04" ]; then # These are the services the user can chose to install on it machin and by default all option off due to user respect chosise
        CHOICE_SERVICE=$(whiptail --separate-output --checklist "Choose OS version" 20 120 5 \
            "MongoDB" "MongoDB is a source-available cross-platform document-oriented database program." OFF \
            "MySQL" "MySQL is an open-source relational database management system." OFF \
            "PostgreSQL" "PostgreSQL, is a free and open-source relational database management system." OFF 3>&1 1>&2 2>&3)

        if [ -z "$CHOICE_SERVICE" ]; then # The -z is when the user did not chose any option or hit cancel bottome
                echo "No option was selected (user hit Cancel or unselected all options)"
        else
            for CHOICES in $CHOICE_SERVICE; do
                case "$CHOICES" in
                    "MongoDB")
                      sudo apt install -y wget
                      wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
                      if [ $? == 0 ]; then
                          echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
                          sudo apt-get update
                          sudo apt-get install -y mongodb-org
                          sudo systemctl enable mongod.service
                          sudo systemctl start mongod.service
                          sudo systemctl status mongod.service
                          if [ $? == 4 ]; then
                              sudo systemctl daemon-reload
                          
                          fi
                      
                      else
                          sudo apt -y install gnupg
                          wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
                          echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
                          sudo apt-get update
                          sudo apt-get install -y mongodb-org
                          sudo systemctl enable mongod.service
                          sudo systemctl start mongod.service
                          sudo systemctl status mongod.service
                          if [ $? == 4 ]; then
                              sudo systemctl daemon-reload
                          
                          fi
                      fi
                      ;;
                    "MySQL")
                      echo "Option 2 was selected"
                      ;;
                    "PostgreSQL")
                      echo "Option 3 was selected"
                      ;;
                    "Essential packages")
                      echo "Option 4 was selected"
                      ;;
                    *)
                      echo "Unsupported item $CHOICES!" >&2
                      exit 1
                      ;;
                  esac
                done
              fi

elif [ "$CHOSE_OS" == "Ubuntu 20.04" ]; then
        echo "The user chose $CHOSE_OS"

        
fi