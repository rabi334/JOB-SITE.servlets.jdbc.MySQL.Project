<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JOB-SITE</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<header class="header">
      <a href="#" class="logo">JobBridge</a>

      <nav class="navbar">
        <a href="index.jsp">Home</a>
        <!-- <a href="#">Find JOB</a> -->
        <!-- <a href="#">Post JOB</a> -->
        <a href="aboutus.jsp">About US</a>
        <a href="login.jsp">Log In</a>
        <a href="signup.jsp" class="active">Sign UP</a>
      </nav>
    </header>
    <div class="signup-container">
      <div>
        <h2 class="signEh2">Sign UP</h2>
        <form id="signupForm" action="signupemp" method="post">
          <label for="emp_name">Name:</label>
          <input type="text" id="emp_name" placeholder="Enter your name" name="emp_name" required />

          <label for="emp_sex">SEX:</label>
          <input
            type="text"
		placeholder="Enter your gender"
            id="emp_sex"
            name="emp_sex"
            required
          />

          <label for="emp_dateofbirth">Birth Date:</label>
          <input
            type="date"
            id="emp_dateofbirth"
            name="emp_dateofbirth"
            required
          />

          <label for="emp_address">Address:</label>
          <input
            type="text"
		placeholder="Enter your address"
            id="emp_address"
            name="emp_address"
            required
          />

          <label for="emp_phoneno">Phone:</label>
          <input
            type="text"
		placeholder="Enter your phone number"
            id="emp_phoneno"
            name="emp_phoneno"
            required
          />

          <label for="emp_edulevel">Education level:</label>
          <input
            type="text"
		placeholder="Enter your your education level"
            id="emp_edulevel"
            name="emp_edulevel"
            required
          />
          <label for="emp_profession">Profession:</label>
          <input
            type="text"
		placeholder="Enter your profession"
            id="emp_profession"
            name="emp_profession"
            required
          />
          <label for="emp_experiance">Experience:</label>
          <input
            type="text"
		placeholder="Enter your Experiance"
            id="emp_experiance"
            name="emp_experiance"
            required
          />
          <label for="emp_language">Language:</label>
          <input
            type="text"
		placeholder="Enter your comfortable language"
            id="emp_language"
            name="emp_language"
            required
          />

          <label for="emp_email">Email:</label>
          <input
            type="email"
		placeholder="Enter your Email"
            id="emp_email"
            name="emp_email"
            required
          />

          
          <label for="emp_password">Password:</label>
          <input
            type="password"
		placeholder="Enter your password"
            id="emp_password"
            name="emp_password"
            required
          />

          <button type="submit">Sign Up</button>
        </form>
      </div>
    </div>
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">  
	
<script type="text/javascript">
   var status = document.getElementById("status").value;
   if (status =="success"){
	   swal("Congrats","Account Created Successfully","success")
   }
</script>
</body>
</html>
