<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: hldn
  Date: 2020/6/30
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="middle"><h2>我的购物车</h2><br>
<a href="historyclass.html">回到历史书架</a><br>
    <a href="historyclass.html">回到计算机书架</a>
   <form action="UpDate.html">
       <input type="submit" value="修改密码" >
   </form>
    <%
        request.setCharacterEncoding("utf-8");
        ArrayList books=(ArrayList)session.getAttribute("books");
        for(int i=0;i<books.size();i++){
            if(books.get(i)!=null){
                String ss=(String)books.get(i);
                //将已添加到购物车的图书信息保存在表单中
    %>
    <form action="cart.jsp" method="post">
        <input type="text" name="book" value="<%=ss%>" size="40" maxlength="200" readonly>
        <input type="submit" value="删除">

    </form>
    <%
            }
        }
        //获取要删除的图书的信息
        String delbook=request.getParameter("book");
        if(delbook!=null){
            for(int j=0;j<books.size();j++){
                String book=(String)books.get(j);
                if(book==null){
                    books.remove(j);
                }
                if(book!=null && book.indexOf(delbook)!=-1){
                    books.remove(j);
                    break;
                }
            }
        }
        //刷新当前页面

    %>

</div>

</body>
</html>
