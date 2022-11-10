package com.java.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeveloperDAO {

public int insertDeveloper(Developer developer) throws ClassNotFoundException {
		
		String dev ="DEV";
		String res = " ";
		String phoneNumber = developer.getPhoneNumber();
	
		String no =phoneNumber.substring(6);
		res=dev+no;
//		System.out.println(res);
	developer.setDeveloperCode(res);	
		
		String query = "INSERT INTO devs"
				+ "(developer_id,developer_name,developer_code,dob,phone_number,email_id) VALUES" + "(?,?,?,?,?,?);";
		int result = 0;
		

		Class.forName("com.mysql.cj.jdbc.Driver");
		try {
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/taskassign?",
					"root", "Tejas@00");
			PreparedStatement preparedStatement = connection.prepareStatement(query);

			preparedStatement.setString(1, developer.getDeveloperId());
			preparedStatement.setString(2, developer.getDeveloperName());
			preparedStatement.setString(3, developer.getDeveloperCode());
			preparedStatement.setString(4, developer.getDob());
			preparedStatement.setString(5, developer.getPhoneNumber());
			preparedStatement.setString(6, developer.getEmailId());

			result = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			printSQLException(e);
		}
		return result;

	}

	private void printSQLException(SQLException ex) {
		// TODO Auto-generated method stub
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
