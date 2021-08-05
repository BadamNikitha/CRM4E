<%-- 
    Document   : validate
    Created on : May 19, 2018, 10:45:23 AM
    Author     : srinivasulu
--%>

<%@page import="java.sql.ResultSet"%>
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
            String name=request.getParameter("username");
            session.setAttribute("uname",name);
            String pass=request.getParameter("password");
            String role=request.getParameter("role");
            System.out.println(name);
            System.out.println(pass);
            System.out.println(role);
            Connection con=DBCon.getCon();
            PreparedStatement pstmt=con.prepareStatement("select * from eusers where uname=? and role=?");
            pstmt.setString(1,name);
            pstmt.setString(2,role);
            ResultSet rs=pstmt.executeQuery();
            rs.next();
                if(role.equalsIgnoreCase("dashboard")){
                    %>
                    <jsp:forward page="dashboard.jsp"/>
                    <%
                }
                    else if(role.equalsIgnoreCase("admin")){
                    %>
                    <jsp:forward page="adminview.jsp"/>
                <%}
                else if(role.equalsIgnoreCase("telecaller")){
                %>
                <jsp:forward page="telecallerHome.jsp"/>
                <%
                }
                %>
                             
            
            
    </body>
</html>
