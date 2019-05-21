<%--
  Created by IntelliJ IDEA.
  User: tjohnston
  Date: 5/16/2019
  Time: 8:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="../css/stylesheet.css">
</head>
<body>
    <h1>Home</h1>
    <ul>
        <li id="active"><a href="home.jsp">Home</a></li>
        <li class="right"><a href ="logoutServlet"> Logout </a></li>
        <li class="right"><a href = "gameQuery.jsp"> Game Query </a></li>
        <li class="right"><a href ="ajax.jsp"> Ajax Demo </a></li>
        <li class="right"><a href ="calculator.jsp"> Calculator </a></li>
    </ul>
    <p>If you see this message, the servlet did its job...</p>

</body>
</html>
