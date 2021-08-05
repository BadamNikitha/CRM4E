<%-- 
    Document   : telecallerHome
    Created on : May 28, 2018, 11:39:20 AM
    Author     : Sai Hanuman
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Connection"%>
<%@page import="com.tg.dao.DBCon"%>
<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/mystyle1.css" /> 

<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
  <div class="icon-bar">
  <a href="telecallerHome.jsp"><i class="fa fa-home"></i></a> 
  <a class="active" href="#"><i class="fa fa-user"></i></a> 
  <a href="tcustomerRegister.jsp"><i class="fa fa-registered"></i></a>
  <a href="logout.jsp"><i class="fa fa-power-off"></i></a> 
</div>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<center><h2>Customer Details</h2></center>
<hr/>
<div class="container">
        
  


<%
    Connection con=DBCon.getCon();
    PreparedStatement pstmt=con.prepareStatement("select * from ecustomers");
    //pstmt.setInt(1,1);
    ResultSet rs=pstmt.executeQuery();
    %>


    
<table>
  <tr>
    <th>Customer ID</th>
    <th>Customer Name</th>
    <th>Gender</th>
    <th>Mobile Number</th>
    <th>e-mail Id</th>
    <th>Street</th>
    <th>City</th>
    <th>State</th>
    <th>Country</th>
    <th>pin code</th>
    <th>Date of Registration</th>
    <th>Comments</th>
    <th>Status</th>
    <th>Action</th>
  </tr>
  <%
while (rs.next()) {

    %>
  <tr>
    <td><%=rs.getInt(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getLong(4)%></td>
    <td><%=rs.getString(5)%></td>
    <td><%=rs.getString(6)%></td>
    <td><%=rs.getString(7)%></td>
    <td><%=rs.getString(8)%></td>
    <td><%=rs.getString(9)%></td>
    <td><%=rs.getInt(10)%></td>
    <td><%=rs.getString(11)%></td>
    <td><%=rs.getString(12)%></td>
    <td><%=rs.getString(13)%></td>
    <td><a href="edit.jsp?id=<%=rs.getInt(1)%>"><img src="images/icons8-Edit-32.png" alt="Edit"></a>
   
    
  </tr>
  <%}%>
</table>
</div>
</body>
</html>

