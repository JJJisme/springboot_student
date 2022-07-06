<%--
  Created by IntelliJ IDEA.
  User: 阿凯
  Date: 2022/1/6
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery3.3.1.min.js"></script>

</head>
<body>
<form action="checkName2" method="post">
    用户名：<input type="text" onchange="click1()" name="user" value="admin"/>
    <span id="msg1"></span>
    <br/>
    密码：<input type="password" onchange="click2()" name="pwd" value="123456"/>
    <span id="msg2"></span>
    <br/>
    <button onclick="click1()" type="button">测试1</button>
    <button onclick="click2()" type="button">测试2</button>
    <button type="submit">提交</button>
</form>
<script>
    function click1() {
        var name = $("input[name='user']").val();
        $.ajax({
            url:"checkName2",
            async:true,
            beforeSend(){

            },
            data:{"name":name},
            method:"post",
            success:function (res) {
                if (res == 1){
                    $("#msg1").html("账户不存在，可以注册")
                }else {
                    $("#msg1").html("账户存在，重新注册")
                }
            }
        });
    }

    function click2() {
        var pwd = $("input[name='pwd']").val();
        $.ajax({
            url:"checkPwd2",
            async:true,
            beforeSend(){

            },
            data:{"pwd":pwd},   //第一个"pwd"是传给control的变量，第二个pwd是上面表单获得值变量
            method:"post",
            success:function (res) {
                if (res == 0){
                    $("#msg2").html("无重复密码");
                }else{
                    $("#msg2").html("重复密码有" + res + "个");
                }
            }
        });
        /*$.ajax({
            url:"checkPwd2",
            async: true,
            beforeSend() {
            },
            data: {"name":name},
            method: post,
            success:function (res) {
                if (res == 0){
                    $("#msg2").html("无重复密码");
                }else {
                    $("#msg2").html("重复密码有" + res + "个");
                }
            }
        });*/
    }
</script>
</body>
</html>
