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
<h2>Parametry wyszukiwania</h2>
<form action="search.jsp" method="get">
    <label>Szukane słowo<input type="text" name="query"></label>
    <label>Strona nr: <input type="number" name="page">
    </label>Sortowanie :
    <select name="sort">
        <option value="asc">rosnąco</option>
        <option value="desc">malejąco</option>
    </select>
    </label>
    <input type="submit" value="wyślij"/>
</form>


</body>
</html>

