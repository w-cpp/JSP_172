<%--
  Created by IntelliJ IDEA.
  User: hldn
  Date: 2020/6/26
  Time: 22:44
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
    String name=request.getParameter("username");
    String password=request.getParameter("pass2");
    String password2=request.getParameter("pass3");
    if(users01.login(name,password)){
        users01.updatePassword(name,password,password2);
        response.sendRedirect("login.html");
    }
    else{
        response.sendRedirect("UpDate.html");
    }
%>
</body>
</html>
