<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 阿凯
  Date: 2022/1/5
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${pageInfo.list}" var="list">
    ${list.empno},${list.ename},${list.job},${list.sal}
    <a href="del?empno=${list.empno}">删除</a>
    <br/>
</c:forEach>
<a href="emp?page=1">首页</a>&nbsp;
<a href="emp?page=${pageInfo.pageNum-1}">上一页</a>&nbsp;
<a href="emp?page=${pageInfo.pageNum+1}">下一页</a>&nbsp;
<a href="emp?page=${pageInfo.pages}">末页</a>&nbsp;
当前${pageInfo.pageNum}/${pageInfo.pages}
</body>
</html>
