<%@ page import="java.util.Objects" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Login</title>
</head>
<body>

<%--	<% request.setAttribute("uri", "/login.jsp");%>--%>
	
	<form method="POST" action="/login.jsp">
		
		<label for="username">Username
		<input id="username" name="username" type="text">
		</label>
		<br>
		
		<label for="password">Password
		<input id="password" name="password" type="password">
		</label>
		<br>
		
		<input type="submit">
		
	</form>
	<%String username = request.getParameter("username"); %>
	<%String password = request.getParameter("password"); %>
	<c:if test='<%= Objects.equals(username, "admin") && Objects.equals(password, "password") %>'>
		<% response.sendRedirect("/profile.jsp"); %>
	</c:if>

	<c:if test='<%= Objects.equals(username, "") || Objects.equals(password, "") %>'>
		<% response.sendRedirect("/login.jsp"); %>
	</c:if>

</body>
</html>
