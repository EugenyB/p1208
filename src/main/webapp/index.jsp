<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>
<br/>
<%=new Date() %>
<a href="hello-servlet">Hello Servlet</a>
<br/>
<form action="hello-servlet" method="post">
    <label for="username">Your name:</label>
    <input id="username" type="text" name="username">
    <input type="submit" value="Hello">
</form>
</body>
</html>