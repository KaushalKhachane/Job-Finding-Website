package com.emp;

import java.io.IOException;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.connection.DbConnection;

@WebServlet("/getcompany")
public class DisplayCompany extends HttpServlet {
	public static String cname, ccity; 
	String c_name, c_city;

	public void service(HttpServletRequest request, HttpServletResponse res) throws IOException {

		try {
			c_name = request.getParameter("cname");
			c_city = request.getParameter("city");
			cname = c_name;
			ccity = c_city;
			Connection con = DbConnection.Connectiontodatabase();
			String query = "SELECT * FROM job.company WHERE name='" + c_name + "' and city='" + c_city + "';";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);

			res.getWriter().println("<style>");
			res.getWriter().println(
					"body {\r\n" + "    background: url(cbg.png);\r\n" + "    background-size: cover;\r\n" + "}");
			res.getWriter().println("#container{" + " margin-top: 80px;\r\n" + " margin-left: 550px;\r\n" + "}");
			res.getWriter()
					.println("#container{\r\n" + "    background-color: rgb(153, 211, 239);\r\n"
							+ "   padding: 10px;\r\n" + "   width: 300px;\r\n" + "   height: 400px;\r\n"
							+ "   border-radius: 10px;\r\n" + "}");
			res.getWriter().println("#logo{\r\n" + " \r\n" + " width: 50px;\r\n" + " height: 30px;\r\n" + " \r\n"
					+ "border-radius: 20px;\r\n" + "\r\n" + "}");
			res.getWriter().println("#nav{\r\n" + "Padding : 15px;\r\n" + "}");
			res.getWriter().println("#name{\r\n" + "    margin-left: 30px;\r\n" + "    font-style:italic;\r\n"
					+ "    font-size: 30px;\r\n" + "     font-weight: bolder;\r\n" + "   color: #0b0b0b;\r\n" + "}");
			res.getWriter().println("#add{\r\n" + "    margin-left: 30px;\r\n" + "    font-size: 15px;\r\n" + "}");
			res.getWriter().println("#job{\r\n" + "background-color: aliceblue;\r\n" + "font-size: 15px;\r\n"
					+ "width: 280px;\r\n" + " height: 45px;\r\n" + " border-radius: 2px;\r\n" + " \r\n" + "}");
			res.getWriter()
					.println("#qualify{\r\n" + "    background-color: aliceblue;\r\n" + "font-size: 15px;\r\n"
							+ "width: 280px;\r\n" + " height: 45px;\r\n" + "margin-top: 10px;\r\n"
							+ "border-radius: 2px;\r\n" + "}");
			res.getWriter()
					.println("#experience{\r\n" + "    background-color: aliceblue;\r\n" + "font-size: 15px;\r\n"
							+ "width: 280px;\r\n" + " height: 45px;\r\n" + "margin-top: 10px;\r\n"
							+ "border-radius: 2px;\r\n" + "}");
			res.getWriter()
					.println("#exp{\r\n" + "    background-color: aliceblue;\r\n" + "font-size: 15px;\r\n"
							+ "width: 280px;\r\n" + " height: 45px;\r\n" + "margin-top: 10px;\r\n"
							+ "border-radius: 2px;\r\n" + "}");
			res.getWriter()
					.println("#btn{\r\n" + "    margin-left: 100px;\r\n" + "    font-size: 15px;\r\n"
							+ "    color: #fff;\r\n" + "		background-color: #194376;\r\n"
							+ "		border-color: #194376;\r\n" + "     padding: 10px 10px;\r\n" + "}");
			res.getWriter().println("a:link{" + " text-decoration: none;\r\n" + "    color: #fff;\r\n" + "}");
			res.getWriter().println("</style>");

			if (rs.next()) {
						//cname = c_name;
						//ccity = c_city;
				res.getWriter().println(
						"<nav id= \"nav\" style=\"background-color: #45c9f5; class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n"
								+ "  <div class=\"container-fluid\">\r\n"
								+ "      <span class=\"navbar-toggler-icon\"></span>\r\n" + "    </button>\r\n"
								+ "    <div class=\"collapse navbar-collapse\" id=\"navbarNavAltMarkup\">\r\n"
								+ "      <div class=\"navbar-nav\">\r\n"
								+ "    <a class=\"navbar-brand\" href=\"#\">Navbar &ensp;</a>\r\n"
								+ "        <a class=\"nav-link active\" aria-current=\"page\" href=\"Employee.html\">Home &ensp;</a>\r\n"
								+ "        <a class=\"nav-link\" href=\"about.html\">About &ensp;</a>\r\n"
								+ "        <a class=\"nav-link\" href=\"contact.html\">Contact &ensp;</a>\r\n" + "      </div>\r\n"
								+ "    </div>\r\n" + "  </div>\r\n" + "</nav>");
				res.getWriter().println("<div id = \"container\">\r\n");
				res.getWriter().println("<label id=\"name\">" + rs.getString(1) + "</label> <br>");
				res.getWriter().println("<label id=\"add\"><br>" + rs.getString(3) + "<br></br></label>");
				res.getWriter().println("<div  id=\"job\"><label>&ensp; Job: " + rs.getString(4) + "</label></div>");
				res.getWriter().println("<div  id=\"qualify\"><label>&ensp; For any " + rs.getString(5)
						+ " in computer engineering  qualified.</label></div>");
				res.getWriter().println(
						"<div  id=\"exp\"><label>&ensp; Expertise required in " + rs.getString(6) + "</label></div>");
				res.getWriter().println(
						"<div  id=\"experience\"><label>&ensp; Experience: " + rs.getString(7) + "</label></div>");
				res.getWriter().println(
						"<br><button id=\"btn\" type='submit' onclick='qualify()'>APPLY</button>");
				res.getWriter().println("<br><script> function qualify() { location.href='QualificationForm.html';}</script>");
				res.getWriter().println("</div>");

			} else {
				res.sendRedirect("BranchNotFound.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}