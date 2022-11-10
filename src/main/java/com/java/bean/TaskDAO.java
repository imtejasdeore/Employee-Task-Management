package com.java.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TaskDAO {
	Connection connection;
	PreparedStatement preparedStatement;
	ResultSet rs;

	public int insertTask(TaskDTO taskDTO) throws ClassNotFoundException {

		String query = "INSERT INTO task" + "(TaskName,DeveloperName,Email,Description,Status,TimeLine) VALUES"
				+ "(?,?,?,?,?,?);";

		int result = 0;

		Class.forName("com.mysql.cj.jdbc.Driver");

		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/taskassign?", "root", "Tejas@00");
			preparedStatement = connection.prepareStatement(query);

			preparedStatement.setString(1, taskDTO.getTaskName());
			preparedStatement.setString(2, taskDTO.getDeveloperName());
			preparedStatement.setString(3, taskDTO.getEmail());
			preparedStatement.setString(4, taskDTO.getDescription());
			preparedStatement.setString(5, taskDTO.getStatus());
			preparedStatement.setString(6, taskDTO.getTimeLine());

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
