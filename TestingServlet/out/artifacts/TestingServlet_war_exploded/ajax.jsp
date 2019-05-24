<%--
  Created by IntelliJ IDEA.
  User: tjohnston
  Date: 5/21/2019
  Time: 2:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- check if session exists. if null, redirect to index --%>
<%
    String uname = (String)session.getAttribute("username");
    if(uname == null){
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>

        <title>Home</title>
        <!-- Bootstrap, popper, jquery -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- my stuff -->
        <script src="../js/ajax.js"></script>
        <link rel="stylesheet" href="../css/stylesheet.css">
    </head>
        <body>
            <nav class="navbar-nav navbar-expand-sm nav-tabs nav-justified">
                <a class="nav-item nav-link" href="home.jsp">Home</a>
                <a class="nav-item nav-link active" href="ajax.jsp">Ajax Demo</a>
                <a class="nav-item nav-link" href="gameQuery.jsp">Game Query</a>
                <a class="nav-item nav-link" href="calculator.jsp">Calculator</a>
                <button class="nav-item btn" id="confirm">Logout</button>
            </nav>
        </body>
</html>
