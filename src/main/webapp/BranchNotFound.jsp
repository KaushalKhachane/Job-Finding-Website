<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="UTF-8">
	<title>Branch Not Found</title>
	<link rel="stylesheet" href="css/login.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
	<%@ page import = "com.connection.DbConnection" %>
	<%@ page import = "com.emp.DisplayCompany" %>
	<%@ page import = "java.io.IOException" %>
	<%@ page import = "java.sql.Connection" %>
	<%@ page import = "java.sql.ResultSet" %>
	<%@ page import = "java.sql.Statement" %>
</head>
<body>
	<div class="container">
    <div class="background"></div>
    <div class="alert_box">
      <div class="icon">
        <i class="fas fa-check"></i>
      </div>
      
      <%
      	out.println("<header>Branch Not Found</header>");
      	out.println("<p>The company "+DisplayCompany.cname+" currently has no vacancies in "+DisplayCompany.ccity+"</p>");
      	out.println("<div class='btns'>");
      	out.println("<button type='button'><a id='btn' href='index.html'> Go to Home </a></button><br><br>");
      	out.println("<button type='button'><a id='btn' href='Employee.html'> Search for other Company </a></button>");
       %>
      	
        
      </div>
    </div>
  </div>
</body>
</html>