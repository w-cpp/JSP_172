<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: hldn
  Date: 2020/6/30
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String book=request.getParameter("book");
    ArrayList books=(ArrayList)session.getAttribute("books");
    if(books==null){
        books=new ArrayList();
        session.setAttribute("books",books);
    }
    if(book!=null){
        books.add(book);
        response.sendRedirect("historyclass.html");
       // out.println("<script type='text/javascript'>alert('加入购物车成功');</script>");
    }
%>


</body>
</html>
