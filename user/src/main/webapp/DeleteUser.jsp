<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
      <title>Floating Icons on Left Border</title>
      <link rel="stylesheet" href="Design.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>



<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<link rel="stylesheet" href="UserAccount.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link href='https://fontawesome/css/all.css' rel='stylesheet'>

<body>
















<div id="social">

<nav>
         <ul>
            <li><a href="#"><i class="fab fa-facebook-f"></i><span>Facebook</span></a></li>
            <li><a href="#"><i class="fab fa-twitter"></i><span>Twitter</span></a></li>
            <li><a href="#"><i class="fab fa-instagram"></i><span>Instagram</span></a></li>
            <li><a href="#"><i class="fab fa-linkedin-in"></i><span>Linkedin</span></a></li>
            <li><a href="#"><i class="fab fa-github"></i><span>Github</span></a></li>
            <li><a href="#"><i class="fab fa-youtube"></i><span>Youtube</span></a></li>
         </ul>
      </nav>

</div>






<header>
	<img alt="logo" src="logo-06.png" class="logo">
	<nav>
		<ul class="nav_links">
			<li><a href="#">Services</a></li>
			<li><a href="#">Items</a></li>
			<li><a href="#">About Us</a></li>
			<li><a href="./ProfileServlet">My Profile</a></li>
			<li><a href="./LogoutServlet">Logout</a></li> 
		</ul>
	</nav>
	<!-- <a class="cta" href="Login.jsp"><button>Sign out</button></a>
	<a class="cta" href="./LogoutServlet"><button>Sign out</button></a>-->
	
</header>












<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String username=request.getParameter("username");
	String password=request.getParameter("password");
%> 

<h1 align="center">Customer Account Delete</h1>

<form action="DeleteCustomerServlet" method="post">
<div id="delete" align="center">
<table>
		<tr><td>Customer ID: </td><td><input type="text" name="cusid" value="<%=id%>" readonly></td></tr>
		<tr><td>Name: </td><td><input type="text" name="name" value="<%=name%>" readonly></td></tr>
		<tr><td>Email: </td><td><input type="text" name="email" value="<%=email%>" readonly></td></tr>
		<tr><td>Phone Number: </td><td><input type="text" name="phone" value="<%=phone%>" readonly></td></tr>
		<tr><td>User Name: </td><td><input type="text" name="uname" value="<%=username%>" readonly></td></tr>
		<tr><td><input type="submit" name="submit" value="Delete My Account" readonly></td></tr>
</table></div>
</form>
	
	
	
	
	
	

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