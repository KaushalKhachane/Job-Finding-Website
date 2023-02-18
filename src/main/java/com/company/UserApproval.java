package com.company;

import java.io.IOException;

import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.connection.DbConnection;

@WebServlet("/approve")
public class UserApproval extends HttpServlet {
	String companyName, applicantName, applicantEmail;
	
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		try {
			companyName = req.getParameter("comp_name");
			applicantName = req.getParameter("app_name");
			applicantEmail = req.getParameter("app_email");
			
			Connection con = DbConnection.Connectiontodatabase();
			
			String query = "INSERT INTO job.members(Name, Phone, Email, Dob) SELECT s_name, s_phone, s_email, s_dob FROM job."+companyName+" WHERE s_name='" + applicantName + "' and s_email='" + applicantEmail + "';";
			Statement st = con.createStatement();
			int res1 = st.executeUpdate(query);
			
			query = "DELETE FROM job."+companyName+" WHERE s_name='" + applicantName + "' and s_email='" + applicantEmail + "';";
			int res2 = st.executeUpdate(query);
			if(res1==1 && res2==1) {
				res.sendRedirect("Approved.html");
			}
			else {
				System.out.println("Some error occurred");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}