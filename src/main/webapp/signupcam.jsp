<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">
    <title>JOB-SITE</title>
    <link rel="stylesheet" href="style.css">
  </head>

  <body>
    <input type="hidden" id="status" value="<%= request.getAttribute(" status") %>">
    <header class="header">
      <a href="#" class="logo">JobBridge</a>

      <nav class="navbar">
        <a href="index.jsp">Home</a>
        <a href="aboutus.jsp">About US</a>
        <a href="login.jsp">Log In</a>
        <a href="signup.html" class="active">Sign UP</a>
      </nav>
    </header>
    <div class="signup-container">
      <div>
        <h2 class="signEh2">Sign Up</h2>
        <form id="signupForm" action="signupcamp" method="post">
          <label for="company_name">Company Name:</label>
          <input type="text" id="company_name" name="company_name" required />

          <label for="company_address">Company Address:</label>
          <input type="text" id="company_address" name="company_address" required />

          <label for="company_phoneno">Company Phone No:</label>
          <input type="text" id="company_phoneno" name="company_phoneno" required />

          <label for="company_email">Company Email:</label>
          <input type="email" id="company_email" name="company_email" required />

          <label for="company_password">Password:</label>
          <input type="password" id="company_password" name="company_password" required />

          <label for="company_managername">Manager Name:</label>
          <input type="text" id="company_managername" name="company_managername" required />

          <button type="submit">Sign Up</button>
        </form>
      </div>
    </div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">

    <script type="text/javascript">
      var status = document.getElementById("status").value;
      if (status == "success") {
        swal("Congrats", "Account Created Successfully", "success")
      }
    </script>
  </body>

  </html>