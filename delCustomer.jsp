<%-- 
    Document   : delCustomer
    Created on : May 30, 2018, 10:38:42 AM
    Author     : Sai Hanuman
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.tg.dao.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id=Integer.parseInt(request.getParameter("id"));
            Connection con=DBCon.getCon();
            PreparedStatement pstmt=con.prepareStatement("delete from ecustomers where cid=?");
            pstmt.setInt(1,id);
            pstmt.execute();
            con.close();
            %>
    <center>Customer With Id ::<b><h2><%=id%></h2></b> is deleted successfully from Data Base</center>
    <jsp:include page="adminview.jsp"/>
    </body>
</html>
