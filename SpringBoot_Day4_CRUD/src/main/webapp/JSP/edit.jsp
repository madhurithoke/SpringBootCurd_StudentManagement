<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>register</title>
<style>
html, body {
    margin: 0; 
    padding: 0; 
    height: 100%; 
    width: 100%;
    background-color:#cfe2ff; 
}

ul{
  margin-left:auto;
}
</style>
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
          <a class="nav-link" href="#">Career</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="#">Help</a>
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
<form action="update">
   <section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        <form>
          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
            <p class="lead fw-normal mb-0 me-3"></p>
            <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-floating mx-1">
              <b class="fab fa-facebook-f" >Update</b>
            </button>
          </div>

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0"></p>
          </div>

           <!-- RollNo input -->
          <div data-mdb-input-init class="form-outline mb-3">
            <input type="text" id="form3Example4"  name="rno" class="form-control form-control-lg"
              placeholder="Enter RollNo" value="${stu.rno}"/>
            <label class="form-label" for="form3Example4">RollNo</label>
          </div>
          
          <!-- Sname input -->
          <div data-mdb-input-init class="form-outline mb-3">
            <input type="text" id="form3Example4" name="sname" class="form-control form-control-lg"
              placeholder="Enter Student Name" value="${stu.sname}"/>
            <label class="form-label" for="form3Example4">Name</label>
          </div>
          
          <!-- Contact input -->
          <div data-mdb-input-init class="form-outline mb-3">
            <input type="text" id="form3Example4"  name="contact" class="form-control form-control-lg"
              placeholder="Enter contact" value="${stu.contact}"/>
            <label class="form-label" for="form3Example4">Contact</label>
          </div>
          
          <!-- Marks input -->
          <div data-mdb-input-init class="form-outline mb-3">
            <input type="text" id="form3Example4" name="marks" class="form-control form-control-lg"
              placeholder="Enter Marks" value="${stu.marks}" />
            <label class="form-label" for="form3Example4">Marks</label>
          </div>
          
          <!-- Username input -->
          <div data-mdb-input-init class="form-outline mb-4">
            <input type="text" id="form3Example3" name="username" class="form-control form-control-lg"
              placeholder="Enter a valid UserName" value="${stu.username}"/>
            <label class="form-label" for="form3Example3">UserName</label>
          </div>


          <!-- Password input -->
          <div data-mdb-input-init class="form-outline mb-3">
            <input type="password" id="form3Example4" name="password" class="form-control form-control-lg"
              placeholder="Enter password" value="${stu.password}"/>
            <label class="form-label" for="form3Example4">Password</label>
          </div>

          

          <div class="text-center text-lg-start mt-4 pt-2">
            <input type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;" value="Update">
          </div>
        <div></div>
        </form>
      </div>
    </div>
  </div>
  <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
        <!-- Copyright -->
     <div class="text-white mb-3 mb-md-0" >
     Copyright � 2020. All rights reserved.</div>
     <!-- Copyright -->
     <!-- Right -->
     <div>
        <a href="#!" class="text-white me-4">
          <i class="fab fa-facebook-f"></i>
        </a>
       <a href="#!" class="text-white me-4">
         <i class="fab fa-twitter"></i>
       </a>
       <a href="#!" class="text-white me-4">
          <i class="fab fa-google"></i>
       </a>
       <a href="#!" class="text-white">
         <i class="fab fa-linkedin-in"></i>
       </a>
    </div>
    <!-- Right -->
  </div>
</section>
</form>
</body>
</html>