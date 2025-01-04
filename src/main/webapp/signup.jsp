<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">
    <title>JOB-SITE</title>
    <link rel="stylesheet" href="style.css">
  </head>

  <body>
    <header class="header">
      <a href="#" class="logo">JobBridge</a>

      <nav class="navbar">
        <a href="index.jsp">Home</a>
        <a href="signupEmployee.jsp">Find JOB</a>
        <a href="signupcam.jsp">Post JOB</a>
        <a href="aboutus.jsp">About US</a>
        <a href="login.jsp">Log In</a>
        <a href="signup.jsp" class="active">Sign UP</a>

      </nav>
    </header>
    <h1 class="signh1">Join as a Employee or Employer</h1>
    <section class="signpage">

      <a href="signupcam.jsp">
        <div class="employer bothepl">
          <h3>I'm a Employer,hiring for job</h3>
        </div>
      </a>
      <a href="signupEmployee.jsp">
        <div class="employee bothepl">
          <h3>I'm a Employee,looking for job</h3>
        </div>
      </a>
    </section>
    <div class="undersignpage">
      <h5 class="signh5">Already have an accont ?</h5><a href="login.html">Log In</a>
    </div>
  </body>

  </html>