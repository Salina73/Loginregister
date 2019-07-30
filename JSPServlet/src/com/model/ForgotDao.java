package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ForgotDao 
{
	String url = "jdbc:mysql://localhost:3306/Login1";
	String user = "root";
	String pwd = "password";
	

	String sql = "select * from Log where pass=?";
	
	public boolean check(String p1, String p2)
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pwd);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, p1);
			
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				String p=rs.getString(2);
				if(p.equals(p1))
				{
					PreparedStatement st1 = con.prepareStatement("update Log set pass=? where pass=?");
					st1.setString(1, p2);
					st1.setString(2, p1);
					st1.executeUpdate();
					return true;
					
				}			
			} 
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return false;
	}
}
