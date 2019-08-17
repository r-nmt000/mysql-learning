This repository provides sample data for learning mysql.

# Prerequisite
Installed following

* Docker
* MySQL

# How to use

## 1. Clone this repository

```
git clone git@github.com:r-nmt000/mysql-learning.git
```


## 2. Get full path to the repository

```
cd mysql-learning
pwd
```

## 2. Run Docker

```
docker container run --rm -d \
  -e MYSQL_ROOT_PASSWORD=mysql \
  -v {$fullpath/sql}:/docker-entrypoint-initdb.d \
  -p 43306:3306 --name mysql mysql:5.7
```

## 3. Jump into mysql!

```
mysql -h 127.0.0.1 --port 43306 -uroot -pmysql
```

