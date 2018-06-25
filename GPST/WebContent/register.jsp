<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page </title>
<link rel="stylesheet" type="text/css" href="gpst.css" />
</head>
<body bgcolor="#D0F3EB">
<header>
<h1> REGISTRATION FORM</h1>
</header>
<br> <br> <br>
<form action="validate1.jsp">
Name            : <input type="text" name="name" required/> <br>
<br>
UserName        : <input type="text" name="username" required/> <br>
<br>
Password        : <input type="password" name="password" required/> <br>
<br>
Mobile          : <input type="text" name="mobile" required/> <br> <br>
Vehicle No		: <input type="text" name="vehicle" reqired/> <br> <br>
<input type="submit" value="Register"/> <br> <br>
</form>
</body>
</html>