<%--
  Created by IntelliJ IDEA.
  User: tjohnston
  Date: 5/21/2019
  Time: 2:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../css/stylesheet.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="verify.js"></script>
</head>
<body>
<h1>Home</h1>
<ul>
    <li><a href="home.jsp">Home</a></li>
    <li class="right"><a href ="logoutServlet"> Logout </a></li>
    <li class="right"><a href = "gameQuery.jsp"> Game Query </a></li>
    <li class="right" id="active"><a href ="ajax.jsp"> Ajax Demo </a></li>
    <li class="right"><a href ="calculator.jsp"> Calculator </a></li>
</ul>

</body>
</html>
