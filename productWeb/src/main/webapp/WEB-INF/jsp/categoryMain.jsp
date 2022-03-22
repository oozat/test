<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="model.CategoryBeans, java.util.List" %>
<%

String msg=(String) request.getAttribute("msg");
List<CategoryBeans> categoryList=(List<CategoryBeans>) request.getAttribute("categoryList");

%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カテゴリ登録</title>
</head>
<body>

<h1>カテゴリ登録</h1>

<form action="/productWeb/CategoryServlet?action=register" method="post">
<p>カテゴリーID：<input type="text" name="categoryId"></p>
<p>カテゴリー名<input type="text" name="categoryName"></p>

<input type="submit" value="登録">
</form>





<form action="/productWeb/CategoryServlet?action=delete" method="post">

<select name="categoryId">
<% for(CategoryBeans category:categoryList){%>
<option value="<%= category.getCategoryBeansId()%>"><%= category.getCategoryBeansId()%></option>
<% } %>
</select>
</p>




<input type="submit" value="削除">
</form>







<form action="/productWeb/CategoryServlet?action=edit" method="post">
<p>編集したいカテゴリーID：<input type="text" name="categoryId"></p>
<p>編集後のカテゴリー名<input type="text" name="categoryName"></p>

<input type="submit" value="編集">
</form>



<% if(msg!=null){ %>
<p><%=msg %></p>
<% } %>

<select name="test">
<% for(CategoryBeans category:categoryList){%>
<option><%= category.getCategoryBeansId()%>:<%=category.getCategoryBeansName() %></option>
<% } %>
</select>

</body>
</html>