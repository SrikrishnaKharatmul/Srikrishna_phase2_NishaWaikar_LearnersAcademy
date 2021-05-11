package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.login.bean.classesbean;

public class ClassesDao {

	public boolean validate(classesbean classesbean) throws ClassNotFoundException {
		boolean status = false;

		Class.forName("com.mysql.jdbc.Driver");

		try (Connection connection = DriverManager
				.getConnection("jdbc:mysql://localhost:3306/mysql_database", "root", "spkrishna");

				// Create a statement using connection object
				PreparedStatement preparedStatement = connection
						.prepareStatement("select students.sid,students.student_class,students.student_name,teacher.class_teacher from mysql_database.students right join mysql_database.teachers on student.student_class=teacher.class_teacher;")) {
			preparedStatement.setInt(1, classesbean.getsid());
			preparedStatement.setString(2, classesbean.getstudent_class());
			preparedStatement.setString(2, classesbean.getstudent_name());
			preparedStatement.setString(2, classesbean.getclass_teacher());


			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			status = rs.next();

		} catch (SQLException e) {
			// process sql exception
			printSQLException(e);
		}
		return status;
	}

	private void printSQLException(SQLException ex) {
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
