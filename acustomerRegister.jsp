<%-- 
    Document   : customerRegister
    Created on : May 25, 2018, 5:37:51 PM
    Author     : Sai Hanuman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/mystyle1.css" /> 
        <link rel="stylesheet" type="text/css" href="css/mystyle.css" /> 
</head>
<body>
<div class="icon-bar">
  <a href="adminview.jsp"><i class="fa fa-home"></i></a> 
  <a href=""><i class="fa fa-user"></i></a> 
  <a class="active" href="registration.php"><i class="fa fa-registered"></i></a>
  <a href="logout.jsp"><i class="fa fa-power-off"></i></a> 
</div>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<center><h1>Customer Registration</h1></center>
<hr/>
<form action="aRegistercustomer.jsp" method="POST">
  <div class="container">
      <center>
      <table>
          
          <tr>
              <td>customer Name</td>
              <td><input type="text"  name="cname" required></td>
          </tr>
           <tr>
              <td>Gender</td>
              <td><input type="text"  name="gender" required></td>
          </tr>
            <tr>
              <td>Mobile Number</td>
              <td><input type="number"  name="mobile" required></td>
            </tr>
            <tr>
              <td>Email-Id</td>
              <td><input type="text"  name="email" required></td>
          </tr>
           <tr>
              <td>Street</td>
              <td><input type="text"  name="street" required></td>
          </tr>
            <tr>
              <td>City</td>
              <td><input type="text"  name="city" required></td>
          </tr>
           <tr>
              <td>State</td>
              <td><input type="text"  name="state" required></td>
          </tr>
          <tr>
              <td>country</td>
              <td><input type="text"  name="country" required></td>
          </tr>
           <tr>
              <td>pin</td>
              <td><input type="number"  name="pin" required></td>
          </tr>
          </table>
      </center>
    </div>
    <div class="clearfix">
        
        <button type="submit" class="signupbtn">Sign Up</button></tr>
        <tr><input type="reset" class="cancelbtn" value="Cancel">
          
      
  </div>
</form>
</body>
</html>


