docker build -t mymysql .
<!-- aarch64 -->
docker build --platform linux/amd64 -t mymysql:5.7 .;
docker run -it --name mymysql -p 3306:3306 -d mymysql


# コンテナ内で

mysql -u testuser -p

show databases;

use test

source ~.sql

show tables