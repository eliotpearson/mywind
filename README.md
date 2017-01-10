## MyWind

Orginal readme is here: https://github.com/dalers/mywind/blob/master/README.md

Using alpine-mysql Dockfile from: https://github.com/wangxian/alpine-mysql

To build the image:

docker build -t alpine-mysql:1.0 -f Dockerfile .

To run the image:

docker run -dit --name mysqla -v $(pwd):/app -p 6603:3306 -e MYSQL_ROOT_PASSWORD=mypassword alpine-mysql:1.0

To run a bash:

docker exec -it mysqla bash

To initialize database:

sh ./initdb.sh 


