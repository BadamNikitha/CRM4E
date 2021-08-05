<%-- 
    Document   : updateuser
    Created on : May 19, 2018, 9:41:36 AM
    Author     : srinivasulu
--%>

<%@page import="com.tg.dao.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
             Connection con=DBCon.getCon();
             int cid=Integer.parseInt(request.getParameter("id"));
             
             String comment=request.getParameter("comment");
             String status=request.getParameter("status");
            
             
    PreparedStatement pstmt=con.prepareStatement("update ecustomers set comments=?,status=? where cid=? ");
   pstmt.setString(1,comment);
   pstmt.setString(2, status);
   pstmt.setInt(3,cid);
    pstmt.execute();
    
            %>
            <jsp:include page="adminview.jsp"/>
            <%out.println("<h2><center>User Updated Successfully</center></h2>");%>
    </body>
</html>
