<%-- 
    Document   : Registercustomer
    Created on : May 25, 2018, 5:29:12 PM
    Author     : Sai Hanuman
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
 <%@page import="com.tg.dao.DBCon"%>
<%@page import="java.lang.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         int cid=1;
         String cname=request.getParameter("cname");
         String gender=request.getParameter("gender");
         long mobile=Long.parseLong(request.getParameter("mobile"));
         String email=request.getParameter("email");
         String street=request.getParameter("street");
         String city=request.getParameter("city");
         String state=request.getParameter("state");
         String country=request.getParameter("country");
         int pin=Integer.parseInt(request.getParameter("pin"));
         java.sql.Date date=DBCon.getCurrentDate();
         String comments=request.getParameter("comments");
         String status=request.getParameter("status");
         Connection con=DBCon.getCon();
         PreparedStatement pstmt=con.prepareStatement("INSERT INTO ECUSTOMERS VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
         Connection con1=DBCon.getCon();
         Statement stmt=con1.createStatement();
         ResultSet rs=stmt.executeQuery("select max(cid) from ecustomers");
         if(rs.next()){
             cid=cid+rs.getInt(1);
         }
         
     //pstmt.setInt(1,cid);
     pstmt.setInt(1,cid);
     pstmt.setString(2,cname);
     pstmt.setString(3,gender);
     pstmt.setLong(4,mobile);
     pstmt.setString(5,email);
     pstmt.setString(6,street);
     pstmt.setString(7,city);
     pstmt.setString(8,state);
     pstmt.setString(9,country);
     pstmt.setInt(10,pin);
     pstmt.setDate(11,date);
     pstmt.setString(12,comments);
     pstmt.setString(13,status);
     pstmt.execute();
        %>
    <center><h2>Customer With ID ::<b><%=cid%></b> Registered Successfully</h2></center>
                <jsp:include page="index.jsp"/>
    
    </body>
</html>
