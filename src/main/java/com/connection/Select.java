package com.connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

//import java.sql.*;

public class Select{
	public static void main(String[] args) throws Exception {
		
//		String url="jdbc:mysql://localhost:3306/job?autoReconnect=true&useSSL=false";
//		String user="root";
//		String password = "Kaushal@2003";
//		Class.forName("com.mysql.jdbc.Driver");
//		Connection connect = DriverManager.getConnection(url,user,password);

		Connection connect = DbConnection.Connectiontodatabase();
//		String query="select * from student";
		
//		Statement stmt=connect.createStatement(); 
//		Statement stmt=connect.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);  
//		ResultSet rs=stmt.executeQuery("select * from student");  
		
		String name = "Kaushal";
		String phone = "9359168397";
		String email = "khachaneks22@gmail.com";
		String dob = "22-04-2003";
		String ps = "12345";
		
		String query1 = "insert into student(Name, Phone, Dob, Email, Password) values(?,?,?,?,?)";
		System.out.println("come3");
		PreparedStatement stmt1=connect.prepareStatement(query1);
		stmt1.setString(1, name);
		stmt1.setString(2, phone);
		stmt1.setString(3, email);
		stmt1.setString(4, dob);
		stmt1.setString(5, ps);
		
		System.out.println("come4");
		int i = stmt1.executeUpdate();
		System.out.println(i);
		
//		ResultSet rs =stmt.executeQuery(query);
//		rs.next();
//		System.out.println(rs.getString("Name"));
		
		connect.close();
		
	}
}