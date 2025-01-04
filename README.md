# Java Dynamic Web Project

## Description
This project is a Java Dynamic Web Application that utilizes JDBC for data storage in MySQL, 
servlets for backend processing, and JSP files for the frontend. It demonstrates a simple web 
application architecture with CRUD operations.

## Features
- User Authentication
- CRUD Operations
- Database Interaction using JDBC
- MVC Architecture
- Dynamic Content Rendering with JSP

## Technologies Used
- Java
- Servlets
- JSP
- MySQL
- JDBC

## Prerequisites
- JDK 1.8 or later
- Apache Tomcat 8.5 or later
- MySQL 5.7 or later
- IDE (Eclipse/IntelliJ)


## Installation
1. Clone the repository:
  
   git clone <repository-url>
   
2. Import the project into your IDE:
   - Open your IDE.
   - Select File > Import.
   - Choose Existing Maven Projects and select the project folder.

3. Setup MySQL Database:
   - Create a database named your_database_name.
   - Run the provided SQL script to create necessary tables.

4. Configure Database Connection:
   - Open db.properties file in the project.
   - Update the database URL, username, and password.

## Usage
1. Deploy the project to Tomcat:
   - Right-click on the project.
   - Select Run As > Run on Server.

2. Access the application:
   - Open a web browser and go to http://localhost:8080/your_project_name.

## Project Structure
- src/main/java - Contains Java source files (servlets, DAO, models).
- src/main/webapp - Contains JSP files, CSS, JavaScript, and other static resources.
- WEB-INF/web.xml - Web application deployment descriptor.
- db.properties - Database connection properties.

## Contributing
1. Fork the repository.
2. Create a new branch (git checkout -b feature-branch).
3. Commit your changes (git commit -m 'Add new feature').
4. Push to the branch (git push origin feature-branch).
5. Open a Pull Request.


## Authors
Group members name and ID

1. Wondmeneh fekadu        Ugr/31346/15

2. Tsiyon Berhanu          Ugr/31331/15

3. Rabira asefa            Ugr/31113/15

4. Hermela kassahun        Ugr/30673/15

5. Moges Tesema            Ugr/30952/15

6. Amanuel Asfaw           Ugr/30147/15

7. Chernet mekuannt        Ugr/26553/14

8. Huzeyfa suleyman.       Ugr/30699/15