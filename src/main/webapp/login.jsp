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
                <a href="signupEmployee.jsp">Find JOB</a>
                <a href="signupcam.jsp">Post JOB</a>
                <a href="aboutus.jsp">About US</a>
                <a href="login.jsp" class="active">Log In</a>
                <a href="signup.jsp">Sign UP</a>

            </nav>
        </header>
        <section class="loginpage">
            <div class="login-container">
                <h2>Login</h2>
                <form action="login" method="post">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" id="username" name="username" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <button type="submit">Login</button>
                </form>
        </section>

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="alert/dist/sweetalert.css">

        <script type="text/javascript">
            var status = document.getElementById("status").value;
            if (status == "failed") {
                swal("Sorry", "Wrong user or Password", "error")
            }
        </script>
    </body>

    </html>