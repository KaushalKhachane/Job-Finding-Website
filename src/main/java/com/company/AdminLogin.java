package com.company;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CompanyLogin")
public class AdminLogin extends HttpServlet {
	/**
	 * 
	 */
	String user, ps;
	private static final long serialVersionUID = 1L;	
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
		System.out.println("Welcome");
		
		user = req.getParameter("user");
		ps = req.getParameter("ps");
		
		if(user.equals("Admin")){
			if(ps.equals("Admin")){
				res.sendRedirect("CompanyPanel.html");
			}
			else{
				System.out.println("Wrong ps");
				res.sendRedirect("AFail.html");
			}	
		}
		else{
			System.out.println("Wrong username");
			res.sendRedirect("AFail.html");
	    }
		
	}

}