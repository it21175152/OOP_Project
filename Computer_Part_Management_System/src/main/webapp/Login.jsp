<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login Page</title>
</head>
<body>

<div align="center">
<h1 align="center">Login Page</h1> 

	<!--  <form action="LoginServlet" method="post">
	<table style="with: 100%">
    <tr>
		<td>User Name</td>
		<td><input type="text" name="uid" placeholder="Enter your username"></td></tr>
	<tr>	
		<td>Password</td>
		<td><input type="password" name="pass" placeholder="Enter your password"></td></tr>
	</table>
		<input type="submit" name="submit" value="Login">
	</form>-->
	
	
	<form action="LoginServlet" method="post">
	<table style="with: 100%">
    <tr>
		<td>User Name</td>
		<td><input type="text" name="username" placeholder="Enter your username"></td></tr>
	<tr>	
		<td>Password</td>
		<td><input type="password" name="password" placeholder="Enter your password"></td></tr>
	</table>
		<input type="submit" name="submit" value="Login">
	</form>
	
	
</div>
</body>
</html>