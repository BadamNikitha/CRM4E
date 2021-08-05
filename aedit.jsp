<%-- 
    Document   : aedit
    Created on : Jun 7, 2018, 12:15:53 PM
    Author     : Sai Hanuman
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.tg.dao.DBCon"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : register
    Created on : May 18, 2018, 8:20:44 PM
    Author     : srinivasulu
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
  <a class="active" href="register.jsp"><i class="fa fa-registered"></i></a>
  <a href="logout.jsp"><i class="fa fa-power-off"></i></a> 
</div>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<center><h2>Update User Here !</h2></center>
<%
    Connection con=DBCon.getCon();
    int id=Integer.parseInt(request.getParameter("id"));
    PreparedStatement pstmt=con.prepareStatement("select * from Ecustomers where cid=? ");
    pstmt.setInt(1,id);
    ResultSet rs=pstmt.executeQuery();
    rs.next();  
 %>
    


    
<hr/>
<form action="aupdateCustomer.jsp" method="POST">
  <div class="container">
      <input type="text" placeholder="<%=rs.getInt(1)%>" name="id" required >
    <input type="text" placeholder="<%=rs.getString(12)%>" name="comment" required>
    <input type="text" placeholder="<%=rs.getString(13)%>" name="status" required>
  	
    <div class="clearfix">
      <button type="submit" class="signupbtn">Update</button>
	  <input type="reset" class="cancelbtn" value="Cancel">
    </div>
  </div>
</form>
