package com.emp;

import com.connection.DbConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignStudent")
public class StudentSignUp extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String name, phone, dob, email, ps;
	
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
		
		try {
			
			Connection connect = DbConnection.Connectiontodatabase();

			name = req.getParameter("name");
			phone = req.getParameter("phone");
			email = req.getParameter("email");
			dob = req.getParameter("dob");
			ps = req.getParameter("ps");
			
			String query = "insert into student(Name, Phone, Dob, Email, Password) values(?,?,?,?,MD5(?))";
			PreparedStatement stmt=connect.prepareStatement(query);
			stmt.setString(1, name);
			stmt.setString(2, phone);
			stmt.setString(3, email);
			stmt.setString(4, dob);
			stmt.setString(5, ps);
			
			int i = stmt.executeUpdate();
			
			if(i>0){
				res.sendRedirect("SignUpSuccess.html");
				System.out.println("Record Inserted");
			}
			
			else {
				System.out.println("Failed");
			}
			stmt.close();
			connect.close();
			
		} catch (Exception e) {}
		
	}

}