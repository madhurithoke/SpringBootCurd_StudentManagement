
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>LoginSuccess</title>
<style>
html, body {
    margin: 0; 
    padding: 0; 
    height: 100%; 
    width: 100%;
    background-color:#cfe2ff; 
}

.container {
    display: flex;
    justify-content: center; /* Center horizontally */
    align-items: center;    /* Center vertically */
    height: 100vh;          /* Full viewport height */
    width: 100%;
}

.table-wrapper {
    width: 80%; /* Optional: Adjust width to control table size */
    max-width: 1200px; /* Optional: Prevent it from getting too large */
}

ul{
  margin-left:auto;
}
</style>

<script type="text/javascript">
 function deleteStudent(rno){
	 document.fn.action="delete";
	 document.fn.submit();
 }
 function editStudent(rno){
	 document.fn.action="edit";
	 document.fn.submit();
 }
</script>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
  <img src="https://adhyayann.com/wp-content/uploads/2023/06/logo-1.png" alt="Adhyayann Logo" height="70px" width="250px">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav" >
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="#">Batch</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="#">Course</a>
        </li>
        <li>
              <a href="login" style="margin-right:5px;" class="btn btn-secondary">Login</a>
        </li>
        <li>
              <a href="register" class="btn btn-warning">Register</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
    <div class="table-wrapper">
<form name=fn>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Select</th>
      <th scope="col">RollNo</th>
      <th scope="col">Student Name</th>
      <th scope="col">Contact</th>
      <th scope="col">Marks</th>
      <th scope="col">Username</th>
       <th colspan="2">Action</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${data}" var="s">
    <tr>
    <td><input type="radio" name="rno" value="${s.rno}"></td>
    <td>${s.rno}</td>
    <td>${s.sname}</td>
    <td>${s.contact}</td>
    <td>${s.marks}</td>
    <td>${s.username}</td>
    <td><input class="btn btn-primary" type="button" value="EDIT" onclick="editStudent()"></td>
    <td><input class="btn btn-warning" type="button" value="DELETE" onclick="deleteStudent()"></td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</form>
</div>
</div>
</body>
</html>