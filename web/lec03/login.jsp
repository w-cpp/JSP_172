<%--
  Created by IntelliJ IDEA.
  User: hldn
  Date: 2020/7/2
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="usersB.users01" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String users=request.getParameter("username");
String password=request.getParameter("password");
if(users01.login(users,password)){
    System.err.print("111111111111111111111111111111111");
    response.sendRedirect("historyclass.html");
}
else {
    response.sendRedirect("login.html");
}

%>
</body>
</html>
