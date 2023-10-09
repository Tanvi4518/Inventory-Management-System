<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Register</title>
</head>
<body>
<%!String str=null; %>
<form action="UserRegistercontroller" method="get">
Uname<input type="text" name="uname"><br>
password<input type="text" name="password"><br>
Cpassword<input type="text" name="cpassword"><br>
<input type="submit" value="Register">
<%Object o=session.getAttribute("msg");
   str=(String)o;
   out.println(str);
%>
<a href="UserLogin.jsp">Login Here</a>
</form>
</body>
</html>