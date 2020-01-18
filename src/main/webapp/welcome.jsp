<%@ page import="java.time.LocalDateTime" %><%--
  Created by IntelliJ IDEA.
  User: Joanna
  Date: 12.01.2020
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!private long visitCounter = 0; %>
<html>
<head>
    <title>Hello World</title>
</head>
<body>
<h2>Obsługa Cookie</h2>
<%
    int searchId = 123456;
    Cookie cookie = new Cookie("searchId", String.valueOf(searchId));
    cookie.setMaxAge(60 * 60 * 24);
    response.addCookie(cookie);

    Cookie usernameCookie = new Cookie("username", "MyUserName");
    response.addCookie(usernameCookie);
%>
<a href="search.jsp">search...</a>

</body>
</html>

