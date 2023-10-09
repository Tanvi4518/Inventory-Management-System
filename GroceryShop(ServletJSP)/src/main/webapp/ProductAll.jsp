<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All available products</title>
</head>
<body>
<%!String str=null; %>
<form action="AllProductController" method="get">
ID<input type="text" name="id"><br>
name<input type="text" name="name"><br>
Category<input type="text" name="category"><br>
Price<input type="text" name="price"><br>
Image<input type="text" name="image"><br>
<input type="submit" value="Add"><br>
<%Object o=session.getAttribute("msg");
  str=(String)o;
  out.println(str);
%>
</body>
</html>