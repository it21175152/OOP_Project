<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="utf-8">
      <title>Floating Icons on Left Border</title>
      <link rel="stylesheet" href="Design.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>



<meta charset="ISO-8859-1">
<title>Your Account</title>
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









































<div class="inside" align="center">
<!--  <h1>Welcome to Computer Spare Parts Management System</h1>
<h2>Your Account Status</h2>-->


<c:forEach var="cus" items="${cusDetails}">


<c:set var="id" value="${cus.id}"></c:set>
<c:set var="name" value="${cus.name}"></c:set>
<c:set var="email" value="${cus.email}"></c:set>
<c:set var="phone" value="${cus.phone}"></c:set>
<c:set var="username" value="${cus.userName}"></c:set>
<c:set var="password" value="${cus.password}"></c:set>

<!--  <div class="table">
<table style="width: 40%">



	<tr><td>Your ID</td><td>${cus.id}</td></tr>
	<tr><td>Name</td><td>${cus.name}</td></tr>
	<tr><td>Email</td><td>${cus.email}</td></tr>
	<tr><td>Phone Number</td><td>${cus.phone}</td></tr>
	<tr><td>User Name</td><td>${cus.userName}</td></tr>
	<tr><td>Password</td><td>${cus.password}</td></tr>
</table>
</div>-->




<!--  

<div class="container" align="center">

	
		<div class="id">Your ID <input class="id" type="text" value="${cus.id}" readonly></div><br>
		<div class="name">Name <input type="text" value="${cus.name}" readonly></div><br>
		<div class="email">Email <input type="text" value="${cus.email}" readonly></div><br>
		<div class="phone">Phone Number <input type="text" value="${cus.phone}" readonly></div><br>
		<div class="username">User Name <input type="text" value="${cus.userName}" readonly></div><br>
		<div class="password">Password <input type="text" value="${cus.password}" readonly></div>
		
		<!--  <tr><td>Name</td><td>${cus.name}</td></tr>
		<tr><td>Email</td><td>${cus.email}</td></tr>
		<tr><td>Phone Number</td><td>${cus.phone}</td></tr>
		<tr><td>User Name</td><td>${cus.userName}</td></tr>
		<tr><td>Password</td><td>${cus.password}</td></tr>
		
		
</div>		
	
-->



<br>
</c:forEach>




<c:url value="UpdateCustomer.jsp" var="cusupdate">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="username" value="${username}"/>
	<c:param name="password" value="${password}"/>
</c:url>


<!--  <input type="button" name="update" value="Update My Data">
<a class="btn" href="${cusupdate}"><button class="btn">Update My Profile</button></a>-->


<c:url value="DeleteCustomer.jsp" var="cusdelete">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="username" value="${username}"/>
	<c:param name="password" value="${password}"/>
</c:url>
<br>
<br>
<!--  <input type="button" name="delete" value="Delete My account">
<a class="btn" href="${cusdelete}"><button class="btn">Delete My Profile</button></a>-->
<br><br><br>
</div>




























<div class="container">
	<div class="leftbox">
		<nav>
			<a onclick="tabs(0)" class="tab active">
				<i class="fa fa-user"></i>
			</a>
			<a onclick="tabs(1)" class="tab">
				<i class="fa fa-credit-card"></i>
			</a>
			<a onclick="tabs(2)" class="tab">
				<i class="fa fa-tv"></i>
			</a>
			<a onclick="tabs(3)" class="tab">
				<i class="fa fa-tasks"></i>
			</a>
			<a onclick="tabs(4)" class="tab">
				<i class="fa fa-cog"></i>
			</a>
		</nav>
	</div>
	<div class="rightbox">
		<div class="profilr tabshow">
			<h1>Personal Info</h1>
			<h2>User ID</h2>
			<p>${id}</p>
			<h2>Full Name</h2>
			<p>${name}</p>
			<h2>Email</h2>
			<p>${email}</p>
			<h2>Phone Number</h2>
			<p>${phone}</p>
			<h2>User Name</h2>
			<p>${username}</p>
			<h2>Password</h2>
			<p>${password}</p>
			<a class="btn1" href="${cusupdate}"><button class="btn">Update</button></a>
			<a class="btn1" href="${cusdelete}"><button class="btn">Delete Account</button></a>
			
		</div>
		
		
		
	</div>
</div>





















































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










</body>
</html>