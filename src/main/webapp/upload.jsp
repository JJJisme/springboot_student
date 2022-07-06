<%--
  Created by IntelliJ IDEA.
  User: 阿凯
  Date: 2022/1/5
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--上传文件必须加 enctype="multipart/form-data" 格式--%>
<form action="upload" method="post" enctype="multipart/form-data">
    用户名：<input type="text" name="username" value="石头人"/>
    <br/>
    文件：<input type="file" name="f"/>
    <br/>
    <input type="submit" value="提交"/>
</form>
</body>
</html>
