package com.company;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DbConnection;

@WebServlet("/addCompanyCards")
public class AddCompanyCard extends HttpServlet {

	/**
	 * 
	 */

	String name, city, address, jobs, qualification, expertise, experience;

	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {

		name = req.getParameter("name");
		city = req.getParameter("city");
		address = req.getParameter("add");
		jobs = req.getParameter("jobs");
		qualification = req.getParameter("qual");
		expertise = req.getParameter("expert");
		experience = req.getParameter("experience");

		try {
			Connection con = DbConnection.Connectiontodatabase();
			String query = "insert into job.company values(?,?,?,?,?,?,?,?,?);";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, city);
			ps.setString(3, address);
			ps.setString(4, jobs);
			ps.setString(5, qualification);
			ps.setString(6, expertise);
			ps.setString(7, experience);
			ps.setString(8, "");
			ps.setString(9, "");

			
			int rows = ps.executeUpdate();

			if (rows == 1) {
				System.out.println("Card added successfully!!!");
				res.sendRedirect("Success.html");
			} else {
				System.out.println("Something went wrong...Card was not added...");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}