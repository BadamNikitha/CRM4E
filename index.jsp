<%-- 
    Document   : index
    Created on : May 18, 2018, 8:13:28 PM
    Author     : srinivasulu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
	<link rel="stylesheet" type="text/css" href="css/mystyle.css" /> 
    </head>
    <body>
  <form action="validate.jsp" method="POST">
  <div class="imgcontainer">
    <img src="images/crm4e.PNG" alt="User" class="user" width="200" height="200">
  </div>

  <div class="container">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
    <div class="form-group">
      <label for="sel1">Select Roles (Any One Role):</label>
      <select class="form-control" id="sel1" name="role" size="2">
        <option>DashBoard</option>
        <option>Admin</option>
        <option>Telecaller</option>
        
      </select>
    <button type="submit" name="submit">Login</button>
    <input type="checkbox" checked="checked"> Remember me
  </div>

  <div class="container" style="background-color:#f1f1f1">
    
    <span class="psw">New <a href="customerRegister.jsp">Customer?</a></span>
  </div>
</form>
    </body>
</html>
