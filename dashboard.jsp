<%-- 
    Document   : dashboard1
    Created on : Jun 5, 2018, 10:46:34 AM
    Author     : Sai Hanuman
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WELCOME</title>
         <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {packages:["orgchart"]});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('string', 'Manager');
        data.addColumn('string', 'ToolTip');

        // For each orgchart box, provide the name, manager, and tooltip to show.
        data.addRows([
          [{v:'USER', f:'USER<div style="color:red; font-style:italic">USER</div>'},
           '', 'role as user'],
          [{v:'ADMIN', f:'ADMIN<div style="color:red; font-style:italic">ADMINISTRATOR</div>'},
           'USER', 'ADMIN'],
          ['TELECALLER', 'USER', 'Provide calling facility to customers'],
          ['CUSTOMERS', 'USER', 'Clients for the organization'],
         // ['Carol', 'Bob', '']
        ]);

        // Create the chart.
        var chart = new google.visualization.OrgChart(document.getElementById('chart_div'));
        // Draw the chart, setting the allowHtml option to true for the tooltips.
        chart.draw(data, {allowHtml:true});
      }
	  
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart1);
      function drawChart1() {
   <%
      int count=0;
      Connection connection=null;
      PreparedStatement statement=null;
      PreparedStatement statement2=null;
      PreparedStatement statement3=null;
      ResultSet set=null;
      ResultSet set2=null;
      ResultSet set3=null;
      try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
	connection =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","crm4e", "crm4e");

	statement=connection.prepareStatement("select COUNT(cid) from ecustomers");
         set=statement.executeQuery();
         set.next();
        statement2= connection.prepareStatement("select COUNT(cid) from ecustomers where status='interested'");
         set2= statement2.executeQuery();
         set2.next();
        statement3= connection.prepareStatement("select COUNT(cid) from ecustomers where status='not interested'");
	       
         set3= statement3.executeQuery();
               
        set3.next();
	 
           

%>
        var data = google.visualization.arrayToDataTable([
          ['Choice', 'Number'],
          ['Total customers',   <%= set.getInt(1)%>],
          ['Interested ',      <%= set2.getInt(1)%>],
          ['Not Interested',  <%= set3.getInt(1)%>]
          
        ]);
<%
    
 }
        catch(Exception e)
    {
        e.printStackTrace();
    }
    finally
    {
          set.close();
	 statement.close();

         set2.close();
	 statement2.close();
         
          set3.close();
	 statement3.close();
         
	 connection.close();
    }
%>
        var options = {
          title: 'ECustomers',
          is3D: true
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
   </script>
    </head>
    <body style="background-color:burlywood ">
       
        <h1 style="text-align:center;color:blue">Welcome to crm4e Dashboard</h1>
	<br><br><br>
    <div id="chart_div"></div>
	<br><br><br>
	<div id="piechart_3d" style="width: 900px; height: 500px; margin:0 auto; color:blanchedalmond "></div>
    </body>
</html>
