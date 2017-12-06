# mysql

## run mysql 
```
docker run -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mysql
```

## connect mysql
```
mysql -u root -p -h dev.localhost
mysql -u root -p -h 10.4.1.95 
mysql -u root -p -h 10.2.2.2
```

## create db
```
create database userz;
```

# userz 

## build
```
docker build --tag erangaeb/userz:0.1 .
```

## run local
```
docker run -it -d -p 8000:8000 -e DB_HOST=dev.localhost erangaeb/userz:0.1
docker run -it -d -p 8000:8000 -e DB_HOST=10.4.1.95 erangaeb/userz:0.1
docker run -it -d -p 8000:8000 -e DB_HOST=10.2.2.1 erangaeb/userz:0.1
```

## run amazon
```
docker run -it -d -p 8000:8000 -e DB_HOST=172.17.0.1 erangaeb/userz:0.1
```

## curl GET
```
curl -X GET dev.localhost:8000/api/v1/users/
curl -X GET 10.4.1.95:8000/api/v1/users/
curl -X GET 10.2.2.2:8000/api/v1/users/
```

## curl POST 
```
curl -H "Content-Type: application/json" -X POST -d '{"name":"bandara","email":"herath@gmail.com"}' dev.localhost:8000/api/v1/users/
curl -H "Content-Type: application/json" -X POST -d '{"name":"bandara","email":"herath@gmail.com"}' 10.4.1.95:8000/api/v1/users/
curl -H "Content-Type: application/json" -X POST -d '{"name":"bandara","email":"herath@gmail.com"}' 10.2.2.2:8000/api/v1/users/
```


