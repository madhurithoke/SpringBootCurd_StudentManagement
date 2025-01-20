# SpringBootCurd_StudentManagement

## Overview
This project is a CRUD (Create, Read, Update, Delete) system for managing students and courses. It uses Spring Boot for backend development, JSP for front-end rendering, and Spring Data JPA for database operations. The system allows users to perform CRUD operations on Student and Course entities.


- **com.company.base**: Base configuration for Spring Boot applications.
- **com.company.model**: This package contains the `Student` and `Course` entity classes.
- **com.company.controller**: This package contains the `StudentController` and `CourseController` handling the HTTP requests.
- **com.company.serviceI**: Service Interfaces for `StudentServiceI` and `CourseServiceI`.
- **com.company.serviceImpl**: Implementation of the service interfaces (`StudentServiceImpl`, `CourseServiceImpl`).
- **com.company.repository**: Repositories responsible for database interactions (`StudentRepository`, `CourseRepository`).

## Technologies Used
- **Spring Boot**: Framework used for building the application.
- **JSP**: Java Server Pages for view rendering.
- **CrudPrository**: Used for database operations.
- **MySQL**: Database for storing data.
- **Maven**: Dependency management.

## Features
- **Student Management**: CRUD operations for managing student information.
- **Course Management**: CRUD operations for managing course details.
- **JSP Views**: User-friendly JSP pages for rendering forms and displaying data.
- **Database Integration**: Database interactions using Crud repositories.
- **Validation**:  validations for student and course entities.
-
