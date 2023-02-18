package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection{
	public static Connection Connectiontodatabase() throws Exception{

	
		String url="jdbc:mysql://localhost:3306/job?autoReconnect=true&useSSL=false&allowPublicKeyRetrival=true";
		String user="root";
		String password = "2243";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection connect = DriverManager.getConnection(url,user,password);
		
		
		return connect;
		
	}
}