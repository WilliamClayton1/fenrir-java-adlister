<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<c:forEach var="ads" items="${viewAds}">
	<div class="ads">
		<h2>${ads.title}</h2>
		<p>Description: ${ads.description}</p>
	</div>
</c:forEach>
</body>
</html>
