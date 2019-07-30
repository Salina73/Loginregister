package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class RegisterDao 
{
	String url = "jdbc:mysql://localhost:3306/Login1";
	String user = "root";
	String pwd = "password";
	
	String sql = "insert into Log values(?,?,?)";
	
	public boolean check(String un, String ps,String em)
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pwd);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, un);
			st.setString(2, ps);
			st.setString(3, em);
			st.executeUpdate();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return false;
	}
}
