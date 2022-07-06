<%--
  Created by IntelliJ IDEA.
  User: 阿凯
  Date: 2022/1/6
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery3.3.1.min.js"></script>
</head>
<body>
<form action="doReg" method="post">
    用户名：<input type="text" onchange="click1()" name="user" value="admin">
    <span id="msg"></span>
    <br/>
    密码：<input type="password" onchange="click2()" name="pwd" value="123456">
    <span id="pw"></span>
    <br/>
    <button onclick="click1()" type="button">测试1</button>
    <button onclick="click2()" type="button">测试2</button>
    <button type="submit">提交</button>
</form>
<script>
    function click1(){
        var name = $("input[name='user']").val();
        $.ajax({
            url:"checkName",
            async:true, // 是否异步请求
            beforeSend:function(){

            },
            data:{"name":name}, //请求的参数
            method:"post",
            success:function(res){ //请求成功后的回调函数
                //res是后端的响应内容
                if (res == 1){
                    $("#msg").html("帐号不存在,可以注册");
                }else {
                    $("#msg").html("账号已存在，请换一个账号!");
                }
            }
        });
    }

    function click33() {
        var name = $("input[name='user']").val();
        $.post("checkName",{"name":name},
            function(res){
                if (res == 1){
                    $("#msg").html("账户不存在，可以注册")
                }else {
                    $("#msg").html("账户已存在，请换一个账号！")
                }
                //res是后端的响应内容
                //alert(res);
            });
    }

    function click2(){
        var pwd = $("input[name='pwd']").val();
        $.post("checkPwd",{"pwd":pwd},
            function (res){
            if (res == 1){
                $("#pw").html("密码不存在，可以注册")
            }else {
                $("#pw").html("密码存在")
            }
                // alert(res);
            });
    }
</script>
</body>
</html>
