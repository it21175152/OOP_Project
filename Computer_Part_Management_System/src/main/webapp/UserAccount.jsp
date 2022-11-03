<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Account</title>
</head>
<body>

<div align="center">
<h2>Your Account Status</h2>
<c:forEach var="cus" items="${cusDetails}">


<c:set var="id" value="${cus.id}"></c:set>
<c:set var="name" value="${cus.name}"></c:set>
<c:set var="email" value="${cus.email}"></c:set>
<c:set var="phone" value="${cus.phone}"></c:set>
<c:set var="username" value="${cus.userName}"></c:set>
<c:set var="password" value="${cus.password}"></c:set>

<table style="with: 100%">



	<tr><td>Your ID</td><td>${cus.id}</td></tr>
	<tr><td>Name</td><td>${cus.name}</td></tr>
	<tr><td>Email</td><td>${cus.email}</td></tr>
	<tr><td>Phone Number</td><td>${cus.phone}</td></tr>
	<tr><td>User Name</td><td>${cus.userName}</td></tr>
	<tr><td>Password</td><td>${cus.password}</td></tr>
</table>
</c:forEach>


<c:url value="UpdateCustomer.jsp" var="cusupdate">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="username" value="${username}"/>
	<c:param name="password" value="${password}"/>
</c:url>

<a href="${cusupdate}">
<input type="button" name="update" value="Update My Data">
</a>

<c:url value="DeleteCustomer.jsp" var="cusdelete">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="username" value="${username}"/>
	<c:param name="password" value="${password}"/>
</c:url>
<a href ="${cusdelete}">
<input type="button" name="delete" value="Delete My account">
</a>
</div>
</body>
</html>