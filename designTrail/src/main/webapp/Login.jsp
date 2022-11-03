<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login Page</title>
</head>
<link rel="stylesheet" href="Style.css">
<body>

<!--<div class="loginbox">
<h1>Login</h1> 

	  <form action="LoginServlet" method="post">
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
	
	
	
	<div class="loginbox">
	<h1>Login</h1> 
	
	<form action="LoginServlet" method="post">
	<!--  <table style="with: 100%">-->
       
   		<!--  <tr><td>User Name</td></tr>-->
   		
		<div class="textbox">
		<i class="bi bi-person-fill"></i>
		<input type="text" name="username" placeholder="Enter your username">
		</div>
	
	
	  
		<!--  <tr><td>Password</td></tr>-->
		<div class="textbox">
		<input type="password" name="password" placeholder="Enter your password">
		</div>
	
	
	<br>
		<input type="submit" class="btn" name="submit" value="Sign in">
	</form>
	
	
</div>
</body>
</html>