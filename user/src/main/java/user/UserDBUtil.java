package user;

import java.util.List;
import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class UserDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
/*public static List<Customer> validate(String userName,String password) {
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			
			String sql = "select * from customer where username='"+userName+"' and password='"+password+"'";
						
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				

				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String useru = rs.getString(5);
				String passu = rs.getString(6);
				
				Customer c = new Customer(id,name,email,phone,useru,passu);
				cus.add(c);
			}
			
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;	
	}*/
	
	
	
	
	
	public static boolean validate(String username,String password) {
		
		try {
			
			con=DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from customer where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<user> getCustomer(String userName){
		ArrayList<user> customer = new ArrayList<>();
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="select * from customer where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				user cus = new user(id,name,email,phone,username,password);
				customer.add(cus);
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return customer;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

public static boolean insertcustomer(String name,String email, String phone, String username, String password)
{
	boolean isSuccess = false;
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "insert into customer values(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else{
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}


	public static boolean updatecustomer(String id,String name,String email, String phone, String username,String password)
	{
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
					+ "where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess=true;
			}
			else {
				isSuccess= false;
			}
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	public static List<user> getCustomerDetails(String Id){
		
		int convertedID=Integer.parseInt(Id);
		ArrayList<user> cus = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where Id='"+convertedID+"'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name=rs.getString(2);
				String email =rs.getString(3);
				String phone =rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				user c= new user(id,name,email,phone,username,password);
				cus.add(c);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return cus;
	}
	
	
	public static boolean deleteCustomer(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from customer where id='"+convId+"'";
			int r=stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}










