<%--Directive: set values for the entire file--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--Defining an instance variable--%>
<%! int num = 21; %>
<%! int counter = 0; %>

<%--Evaluating arbitrary java code--%>
<% counter += 1; %>

<html>
<head>
    <title><%= "some title" %></title>
</head>
<body>
    <%@ include file="partials/navbar.jsp"%>
    
    <h1>Implicit Object in action: </h1>
    <p>Path: <%= request.getRequestURL() %></p>
    <p>Query String: <%= request.getQueryString() %></p>
    <p>"name" parameter: <%= request.getParameter("name") %></p>
    <p>"method" attribute: <%= request.getMethod() %></p>
    <p>User-Agent header: <%= request.getHeader("user-agent") %></p>
    
    <h2>EL / Expression Language</h2>
    <p>User-Agent header ${header["user-agent"]}</p>
    
    <%-- More of the evauation expression --%>
    <h2>What other evaluations can we do?</h2>
    <p>${ 2 + 2 }</p>
    
    <% request.setAttribute("message", "Hello World!");%>
    
    <h1>${message}</h1>
    
    <%--Evaluate an expression and print the result--%>
    <h1>The current count is: <%= counter %></h1>
    
    <%-- forEach tag  --%>
    <h2>JSTL Functionality Demo</h2>
    <% request.setAttribute("numbers", new int[]{2, 7, 12, 21, 87}); %>
    
    <ul>
        <c:forEach items="${numbers}" var="numbers">
            <li>${numbers}</li>
        </c:forEach>
    </ul>
    
    <%--c: choose analogous to an if-else statement--%>
    <c:choose>
        <c:when test="true">
            <p>Boolean expression 1 was true</p>
        </c:when>
        <c:when test="false">
            <p>Boolean expression 1 was false, boolean expression 2 was true</p>
        </c:when>
        <c:otherwise>
            <p>None of the tests were true</p>
        </c:otherwise>
    </c:choose>
    
    <c:if test= "<%= num > 20 %>" >
        <h1>Variable names should be very descriptive</h1>
    </c:if>
    <c:if test= "<%= num < 20 %>" >
        <h1>single letter variable names are good</h1>
    </c:if>
</body>
</html>
