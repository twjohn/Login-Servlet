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
      <!-- Bootstrap, popper, jquery -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

      <!-- my stuff -->
      <script src="../js/ajax.js"></script>
      <link rel="stylesheet" href="../css/stylesheet.css">
  </head>
      <body>
          <div id="login-area">
              <div class="container">
                  <div id="login-row" class="row justify-content-center align-items-center">
                      <div id="login-column" class="col-md-6">
                          <div id="login-box" class="col-md-12">
                              <h3 class="text-center text-info">User Login</h3>
                              <form id="login-form" class="form" action="login" method="post">
                                  <div class="form-group">
                                      <label for="uname" class="text-info">Username:</label><br/>
                                      <input type="text" id="uname" name="uname" placeholder="username" class="form-control"/>
                                        <br/>
                                      <label for="pass" class="text-info">Password:</label><br/>
                                      <input type="password" id="pass" name="pass" placeholder="password" class="form-control"/>
                                        <br/>
                                      <div class="col text-center">
                                          <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                                      </div>
                                  </div>
                              </form>
                          </div>
                      </div>
                  </div>
              </div>
          </div>

      <!--
          <div class="container">
              <h1 id="index">User login</h1>
              <form action="login" method="post" id="loginForm">


                  <input type="submit" name="login" value="Login"/>
              </form>
          </div>-->
      </body>
</html>
