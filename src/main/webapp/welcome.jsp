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
<h1>
    <% out.print("Hello World"); %>
    Dzisiaj jest: <%= java.time.LocalDateTime.now().toString()%>
    <% String nowString = LocalDateTime.now().toString();
        out.print(nowString);
    %>
</h1>
<p>Licznik odwiedzin: <%=++visitCounter %></p>
</body>
</html>
