docker build -t mymysql .

docker run -it --name test-mysql -p 3306:3306 -d mymysql

# コンテナ内で

mysql -u testuser -p

show databases;

use test

source ~.sql

show tables