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
<p>Server name: ${pageContext.request.serverName}</p>
<p>Server port: ${pageContext.request.serverPort}</p>
<p>Request URI: ${pageContext.request.requestURI}</p>



<p>Licznik odwiedzin: <%=++visitCounter %></p>
<%-- komnetarz JSP --%>
<!-- komentarz HTML -->
    <jsp:forward page="redirected.jsp">
<jsp:param name="myParam" value= "my value"/>
</jsp:forward>

</body>
</html>

