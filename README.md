# Car Lease Main

This project is the main assembly point of the service projects. It contains services as git submodules. To clone use
the recursive flag.

```
git clone --recursive https://github.com/remideboer/carlease-main.git
```

## Manage submodules

Get latest updates from submodules

````
git submodule update --remote --merge
````

## To run

Three services are used: Gateway, Car Service, Customer Service. The services can be started separately. See
documentation in the README for each service cd into directory and use maven or use supplied script ```deploy.sh``` to
clean package and run all 3 in one go.

To brute force stop use ```terminate.sh```

- [ ] future if time use docker compose.

```shell
mvn spring-boot:run

# for the development profile use

mvn spring-boot:run -Dspring-boot.run.profiles=dev

```

## Services

ports Gateway: 8080 Customer service: 9092 Car service: 9091

### URL Mapping

#### AUTHENTICATION

- [x] POST:   {domain}/authenticate - authenticate using username and password to obtain a JWT

#### CARS

- [x] GET:    {domain}/cars - returns al cars
- [x] GET:    {domain}/cars/{id} - returns specific cars
- [x] POST {domain}/cars - create new cars
- [x] DELETE: {domain}/cars{id} - delete specific cars
- [x] PUT:    {domain}/cars{id} - update specific cars
- [x] GET:    {domain}/cars{id}/leaserate?{mileage,interest,duration} - calculculates leaserate for given car. required
  parameters

#### CUSTOMERS

- [x] GET:    {domain}/customers - returns al customers
- [x] GET:    {domain}/customers/{id} - returns specific customer
- [x] POST {domain}/customers - create new customer
- [x] DELETE: {domain}/customers/{id} - delete specific customer
- [x] PUT:    {domain}/customers/{id} - update specific customer

## get in

Using the most secure overused password in the world.

```
admin:Welkom01
broker:Welkom01
```

```
POST {domain}/authenticate - authentication endpoint see below example 
```

POST authenticate request body example

```json
{
  "username": "admin",
  "password": "Welkom01"
}
```

response example

```json
{
    "id": "eyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvY2FybGVhc2UuY29tIiwic3ViIjoiYWRtaW4iLCJleHAiOjE2MjQwMzQzMTB9.BJ1CLXOpVjnTv8uEmjUgw6yrzMJhIzMOvqHsZKN0Av4"
}
```

