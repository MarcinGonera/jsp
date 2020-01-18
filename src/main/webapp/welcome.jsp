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
    <title>Obsługa sesji</title>
</head>
<body>
<h2>Obsługa sesji</h2>

<%
    request.getSession().invalidate();
    HttpSession actualSession = request.getSession();
    actualSession.setAttribute("userId", 123456);
%>

<a href="session.jsp">session...</a>

</body>
</html>

