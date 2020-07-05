<%--
  Created by IntelliJ IDEA.
  User: hldn
  Date: 2020/6/25
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="usersB.users" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name=request.getParameter("username");
    String password=request.getParameter("pass");
    String password１=request.getParameter("pass1");

    if(password.equals(password１)) {

        users.register(name, password);
        if (users.login(name, password)) {
            session.setAttribute("name", name);
            response.sendRedirect("register.html");
        }
    }
    else
    {
        out.print("注册失败！！！");

    }
%>

</body>
</html>
