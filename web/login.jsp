<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>欢迎登陆</title>
    <style>
        label {
            display: inline-block;
            width: 80px;
            text-align: right;
        }

        label:after {
            content: '：';
        }

        .errorMessage {
            color: firebrick;
            font-weight: bold;
        }
    </style>
</head>
<body>
<%
    if (request.getAttribute("err") != null) {
%>
<div class="errorMessage">
    <%=request.getAttribute("err")%>
</div>
<%
    }
%>
<form action="login" method="post">
    <div>
        <label for="username">用户名</label>
        <input id="username" type="text" name="username"/>
    </div>
    <div>
        <label for="password">密码</label>
        <input id="password" type="password" name="password"/>
    </div>
    <div>
        <input type="submit" value="登陆"/>
    </div>
</form>
</body>
</html>