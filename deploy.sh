#!/bin/bash
# straight forward cd-ing and calling mvn package for all services
# skipping tests because JWT expiration time in test has not been adjusted
cd carlease-gateway/
mvn clean package
pwd
cd ../carlease-car-service/
mvn clean package
pwd
cd ../carlease-customer-service/
mvn clean package
pwd
# back to root
cd ..
# run all services
echo "-----STARTING SERVICES-----"
echo "-----STARTING CAR SERVICE-----"
java -jar ./carlease-car-service/target/car-service-0.0.1-SNAPSHOT.jar &
echo "-----STARTING CUSTOMER SERVICE-----"
java -jar ./carlease-customer-service/target/customer-service-0.0.1-SNAPSHOT.jar &
echo "-----STARTING GATEWAY-----"
java -jar ./carlease-gateway/target/gater-0.0.1-SNAPSHOT.jar &
