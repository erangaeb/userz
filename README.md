## curl GET

curl -X GET dev.localhost:8000/api/v1/users/


## curl POST 

curl -H "Content-Type: application/json" -X POST -d '{"name":"bandara","email":"herath@gmail.com"}' dev.localhost:8000/api/v1/users/


## running on amazon

docker run -it -d -p 8000:8000 -e DB_HOST=172.17.0.1 erangaeb/userz:0.1
