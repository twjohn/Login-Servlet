<%--
  Created by IntelliJ IDEA.
  User: tjohnston
  Date: 5/16/2019
  Time: 8:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="../css/stylesheet.css">
  </head>
  <body>
  <h1 id="index">User login</h1>
    <form action="login" method="post" id="loginForm">
      <input type="text" name="uname" placeholder="username"/>
      <input type="password" name="pass" placeholder="password"/>
      <input type="submit" name="login" value="Login"/>
    </form>
  </body>
</html>
