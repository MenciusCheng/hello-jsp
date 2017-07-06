<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>hello-jsp</title>
</head>
<body>
<h1>Hello JSP</h1>
<p>现在的时间是：<%= new java.util.Date() %>
</p>
<%!
    Integer applicationCounter = 0;
    Integer sessionCounter = 0;
    Integer requestCounter = 0;
    Integer pageCounter = 0;
%>
<%
    application.setAttribute("applicationCounter", ++applicationCounter);
    session.setAttribute("sessionCounter", ++sessionCounter);
    request.setAttribute("requestCounter", ++requestCounter);
    pageContext.setAttribute("pageCounter", ++pageCounter);
%>
<p>applicationCounter=<%=application.getAttribute("applicationCounter")%></p>
<p>sessionCounter=<%=session.getAttribute("sessionCounter")%></p>
<p>requestCounter=<%=request.getAttribute("requestCounter")%></p>
<p>pageCounter=<%=pageContext.getAttribute("pageCounter")%></p>
</body>
</html>