package com.emp;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.connection.DbConnection;

@WebServlet("/LoginStudent")
public class EmployeeLogin extends HttpServlet {
	/**
	 * 
	 */
	String user, ps;
	private static final long serialVersionUID = 1L;
	

	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		String decy=null;
		System.out.println("Hello");

		user = req.getParameter("user");
		ps = req.getParameter("ps");
		try {
			MessageDigest mdEnc = MessageDigest.getInstance("MD5");
			mdEnc.update(ps.getBytes(), 0, ps.length());
			decy = new BigInteger(1, mdEnc.digest()).toString(16);
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		

		try {
			java.sql.Connection connect = DbConnection.Connectiontodatabase();
			String query = "SELECT * FROM student WHERE Phone = '" + user + "' and Password = '"+decy+"';";

			Statement st = connect.createStatement();
			ResultSet rs = st.executeQuery(query);

			int flag = 0;
			while (rs.next()) {
				flag = 1;
				res.sendRedirect("Employee.html");
			}

			if (flag != 1) {
				res.sendRedirect("NotExist.html");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}