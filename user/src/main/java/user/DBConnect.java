package user;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url="jdbc:mysql://localhost:3306/computer_management_system";
	private static String username="root";
	private static String password="Dilanka1998";
	
	private static Connection con;
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,username,password);
		}
		catch(Exception e) {
			System.out.println("Database connection is not connected");
		}
		return con;
	}

}
