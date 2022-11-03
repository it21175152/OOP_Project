<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="UserAccount.css">
</head>

<body>


<header>
	<img alt="logo" src="logo-06.png" class="logo">
	<nav>
		<ul class="nav_links">
			<li><a href="#">Services</a></li>
			<li><a href="#">Items</a></li>
			<li><a href="#">About Us</a></li>
		</ul>
	</nav>
	<a class="cta" href="Login.jsp"><button>Sign out</button></a>
	
</header>










<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String username=request.getParameter("username");
	String password=request.getParameter("password");


%>



<form action="UpdateCustomerServlet" method="post">
<div class="container">
	
	<div class="rightbox">
		<div class="profilr tabshow">
			<h1>Personal Info</h1>
			<h2>User ID</h2>
			<p><input type="text" name="cusid" value="<%=id%>" readonly></p>
			<h2>Full Name</h2>
			<p><input type="text" name="name" value="<%=name%>"></p>
			<h2>Email</h2>
			<p><input type="text" name="email" value="<%=email%>"></p>
			<h2>Phone Number</h2>
			<p><input type="text" name="phone" value="<%=phone%>"></p>
			<h2>User Name</h2>
			<p><input type="text" name="uname" value="<%=username%>"></p>
			<h2>Password</h2>
			<p><input type="password" name="pass" value="<%=password%>"></p>
			<button class="btn">Update</button>
			<!--<input type="submit" name="submit" value="Update My Data">
			
			  <a class="btn1" href="${cusupdate}"><button class="btn">Update</button></a>
			<a class="btn1" href="${cusdelete}"><button class="btn">Delete Account</button></a>
			-->
		</div>
		
		
		
	</div>
</div>

</form>












<!--  	<form action="UpdateCustomerServlet" method="post">
		Customer ID: <input type="text" name="cusid" value="<%=id%>" readonly><br>
		Name: <input type="text" name="name" value="<%=name%>"><br>
		Email: <input type="text" name="email" value="<%=email%>"><br>
		Phone Number: <input type="text" name="phone" value="<%=phone%>"><br>
		User Name: <input type="text" name="uname" value="<%=username%>"><br>
		Password: <input type="password" name="pass" value="<%=password%>"><br>
		<input type="submit" name="submit" value="Update My Data"><br>
	</form>
-->
</body>








<footer>
	<div class="footer-content">
		<h3>computer Parts Management System</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		<ul class="socials">
			<li><a href="#"><i class="fa fa-facebook"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
			<li><a href="#"><i class="fa fa-youtube"></i></a></li>
			<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
		</ul>
	</div>
	
	<div class="footer-bottom">
		copyright &copy;2020 computerParts. designed by <span>Dilanka</span>
		
	</div>
</footer>









</html>