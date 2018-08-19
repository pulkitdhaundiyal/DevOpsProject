<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Addition</title>
</head>
<body>
<center>
	<h2>Nissan DevOps Project : Summation of two numbers</h2>
	<%if(request.getParameter("t1").equals("") || request.getParameter("t2").equals("")) {%>
	<%= "<input style=\"border: 2px solid\" type=\"text\" value=\""+(request.getParameter("t1"))+"\"/>"%>
	<span>+</span>
	<%= "<input style=\"border: 2px solid\" type=\"text\" value=\""+(request.getParameter("t2"))+"\"/>"%>
	<br><br>
	<span>=</span>
	<br><br>
	<input style="border: 2px solid;" type="text" size="45" value="Operand(s) cannot be empty"/>
	<%} else{ %>
	<% try{ 
	float x = Float.parseFloat(request.getParameter("t1"));
	float y = Float.parseFloat(request.getParameter("t2"));%>
	<%= "<input style=\"border: 2px solid\" type=\"text\" value=\""+(Float.parseFloat(request.getParameter("t1")))+"\"/>"%>
	<span>+</span>
	<%= "<input style=\"border: 2px solid\" type=\"text\" value=\""+(Float.parseFloat(request.getParameter("t2")))+"\"/>"%>
	<br><br><span>=</span><br><br>
	<%= "<input style=\"border: 2px solid\" type=\"text\" size=\"45\" value=\""+(Float.parseFloat(request.getParameter("t1"))+Float.parseFloat(request.getParameter("t2")))+"\"/>"%>
	<%} catch(Exception e){%>
	<%= "<input style=\"border: 2px solid\" type=\"text\" value=\""+(request.getParameter("t1"))+"\"/>"%>
	<span>+</span>
	<%= "<input style=\"border: 2px solid\" type=\"text\" value=\""+(request.getParameter("t2"))+"\"/>"%>
	<br><br><span>=</span><br><br>
	<input style="border: 2px solid;" type="text"  size="45" value="Invalid Input"/>
	<% }} %>
	<br><br>
	<a style="border: 2px solid;" href="index.jsp">Retry with different entries</a>
	<br><br>
</center>
</body>
</html>