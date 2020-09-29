<%--
  Created by IntelliJ IDEA.
  User: Bohdan
  Date: 29.09.2020
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
    <meta charset="utf-8">
    <title>Hospital | Sign in</title>
</head>

<body class="red lighten-2">
<div class="row">
    <div class="col m6 offset-m3 l4 offset-l4 s12">
        <div class="card-panel z-depth-5" style="min-height: 90vh; margin-top: 4vh; position: relative">
            <div class="valign-wrapper" style="margin-top: 20%">
                <form action="firstJsp.jsp" method="POST" class="center-block" style="text-align: center; min-width: 80%">
                    <h1>Log in</h1>
                    <h4>Welcome back!</h4>
                    <div class="input-field" style="margin-top: 40px">
                        <i class="material-icons prefix">email</i>
                        <input type="text" id="email" name="email">
                        <label for="email">Your email</label>
                    </div>
                    <div class="input-field">
                        <i class="material-icons prefix">lock</i>
                        <input type="password" id="password" name="password">
                        <label for="password">Your Password</label>
                    </div>
                    <p>Don`t have an account yet? <a href="register.jsp">Register</a></p>
                    <div class="input-field center">
                        <button class="btn-large indigo darken-4" type="submit">Log in</button>
                    </div>
                </form>
                <a style="position: absolute; bottom: 2%" href="firstJsp.jsp">Go home</a>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script>
    $(document).ready(function(){

    });
</script>
</body>
</html>

