


<%--
  Created by IntelliJ IDEA.
  User: hldn
  Date: 2020/6/23
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String users=request.getParameter("usersname");
    String pass=request.getParameter("pass");
    if("admin".equals(users)&&"123456".equals(pass)){
        out.print("登录成功！！");
    }
    else
    {
        response.sendRedirect("loginA.html");
    }
%>

</body>
</html>
