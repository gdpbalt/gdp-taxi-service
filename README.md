# Taxi service

### Project description
This is an educational project. 
Which have to show how to work with database via JDBC, with Java Servlet 
and divide code into different levels.

Project has next features:
- Authentication form
- Registration form
- Display All Drivers
- Display All Cars
- Display All Manufacturers
- Create new Driver
- Create new Car
- Create new Manufacturer
- Add Driver to Car
- Delete Driver from Car
- Delete Driver
- Delete Car
- Delete Manufacturer
- Display My Current Cars

### Run application in your browser

### Project represents N-layer architecture
Layers:
- Presentation layer
- Controller layer
- Service layer
- Data access layer

### Database diagram
![diagram](table-diagram.png)

### Technologies used in project
- Java v.11
- Apache Tomcat v.9
- MySQL v.8
- Maven v.3.8
- Java Servlet v.4
- JSTL v.1.2
- In project used pattern of Dependency Injector

### To run project
- You should have installed version of Apache Tomcat, MySQL, Git, Maven, Java
- Clone the project from GitHub
- Create new user and database for working the project with database
- Initialise database. Use for that src/main/resources/init_db.sql
- Configure database connection. Use for that src/main/java/taxi/util/ConnectionUtil.java
