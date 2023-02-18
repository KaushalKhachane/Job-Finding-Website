package com.emp;

import com.connection.DbConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.emp.DisplayCompany;

@WebServlet("/qualification")
public class UserQualification extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String name, phone, email, dob, qualification, expertise, experience;
	
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		try {
			name = req.getParameter("name");
			phone = req.getParameter("phone");
			email = req.getParameter("email");
			dob = req.getParameter("dob");
			qualification = req.getParameter("qualification");
			expertise = req.getParameter("expertise");
			experience = req.getParameter("experience");
			
			Connection con = DbConnection.Connectiontodatabase();
			Statement st = con.createStatement();
			
			String company = DisplayCompany.cname;
			String city = DisplayCompany.ccity;
			
			System.out.println("Company:" + company);
			System.out.println("City:" + city);
			
			String query1 = "select qualification, expertise, experience from job.company where name='" + company + "' and city='" + city + "';";
			ResultSet rs = st.executeQuery(query1);
			
			if(rs.next()) {
				System.out.println("Company found");
				if(rs.getString(1).contains(qualification) && rs.getString(2).contains(expertise) && rs.getString(3).contains(experience)) {
					
					System.out.println("Qualifications are matching");
					String company_table = String.join("_", company.toLowerCase().split(" ",5));
					String query2 = "insert into job." + company_table + " values(?,?,?,?,?,?,?);";
					
					PreparedStatement ps = con.prepareStatement(query2);
					ps.setString(1, name); ps.setString(2, phone);
					ps.setString(3, email); ps.setString(4, dob);
					ps.setString(5, qualification); ps.setString(6, expertise);
					ps.setString(7, experience);
					
					int rows = ps.executeUpdate();
					if(rows > 0) {
						System.out.println("User profile and qualification submitted.");
						res.sendRedirect("ProfileSubmitted.jsp");
					}
				}
				else {
					System.out.println("Your qualification doesn't match with the company requirements.");
					res.sendRedirect("ProfileNotSub.html");
				}
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}