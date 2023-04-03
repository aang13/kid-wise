**Requirements**\
for building and running the application you need:\
JDK 11\
Maven 3

**Running the application locally** \
You can use any IDE that support Spring Boot applications and run from there.\
Alternatively you can use Spring Boot maven plugin like so:\
`mvn spring-boot:run`

Once the application is run you can access all the Rest end points via _swagger_.
To see the full list of apis run the project & browse:
`http://localhost:8080/swagger-ui.html`

Here are the list of apis.
![alt text](https://user-images.githubusercontent.com/32796511/101308448-0f5c4880-3874-11eb-834c-c36994db6777.png)

**Database**\
H2 database: in memory database for spring boot application.Note that the in-memory database is volatile, and data will be lost when we restart the application.

**Dockarize the application**\
create an executable jar file:\
`mvn clean package`

start up the Spring Boot application:\

`java -jar target/kid-wise-0.0.1-SNAPSHOT.jar`

Create Docker image from docker file:\
`docker build --tag=kid-wise:latest .`

Run the docker image:\
`docker run -p8080:8080 kid-wise:latest`

Using Docker-compose:\
Build: `docker-compose build` \
Run: `docker-compose up -d` \
Stop: `docker-compose down`


