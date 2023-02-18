<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="UTF-8">
	<title>Website Members JSP</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="CLogin/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="CLogin/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="CLogin/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="CLogin/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="CLogin/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="CLogin/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="CLogin/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="CLogin/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="CLogin/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="CLogin/css/util.css">
<link rel="stylesheet" type="text/css" href="CLogin/css/main.css">
<!--===============================================================================================-->

	<%@ page import = "com.connection.DbConnection" %>
	<%@ page import = "com.emp.DisplayCompany" %>
	<%@ page import = "java.io.IOException" %>
	<%@ page import = "java.sql.Connection" %>
	<%@ page import = "java.sql.ResultSet" %>
	<%@ page import = "java.sql.Statement" %>
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
	<!-- Navbar content --> <nav
		class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavAltMarkup"
			aria-controls="navbarNavAltMarkup" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-link " aria-current="page" href="index.html">Home</a>
				<a class="nav-link" href="http://localhost:8080/CPP/CompanyLogin.html">Back</a>

			</div>
		</div>
	</div>
	</nav> </nav>
	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('CLogin/images/bg-01.jpg');">
			<div align="center">
			<span class="login100-form-title p-b-41"> Our Members </span></div>
			<br><br><br>
			<%
	      	try {
	      		String query = "select Name, Phone, Email, Dob from job.members;";
	      		Connection con = DbConnection.Connectiontodatabase();
	      		Statement st = con.createStatement();
	      		ResultSet rs = st.executeQuery(query);
	      		out.println("<style> th {background: white; color: black;} td {font-size: 20px;}</style>");
	      		out.println("<style> th, td {padding: 15px;} table, th, td {border: 2px solid white;}</style>");
	      		out.println("<br><br><br><table style='color:white'> <tr>");
      			out.println("<th><h3> Name </h3></th>");
      			out.println("<th><h3> Phone </h3></th>");
      			out.println("<th><h3> Email </h3></th>");
      			out.println("<th><h3> Date of Birth </h3></th> </tr>");
	      		while(rs.next()) {
	      			out.println("<tr>");
	      			out.println("<td> "+rs.getString(1)+" </td>");
	      			out.println("<td> "+rs.getString(2)+" </td>");
	      			out.println("<td> "+rs.getString(3)+" </td>");
	      			out.println("<td> "+rs.getString(4)+" </td> </tr>");
	      		}
	      		out.println("</table>");
	      	}
	      	catch(Exception e) {
	      		e.printStackTrace();
	      	}
	      	%>
		</div>
	</div>
</body>
</html>