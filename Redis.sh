CHOICE_SERVICE=$(whiptail --separate-output --checklist "Choose OS version" 20 120 5 \
    "MongoDB" "MongoDB is a source-available cross-platform document-oriented database program." off \
    "MySQL" "MySQL is an open-source relational database management system." off \
    "PostgreSQL" "PostgreSQL, is a free and open-source relational database management system." off \ 
    "Redis" "Redis is an open source nosql database that is in-memory data structure store." off \ 3>&1 1>&2 2>&3)