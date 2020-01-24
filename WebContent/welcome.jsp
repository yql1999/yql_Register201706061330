<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎页</title>
</head>
<body>

	<h1>恭喜您注册成功！</h1>
	<br>
	<h3>您在注册界面填写的数据如下：</h3>

	<!-- 通过标签获取session中的 RegisterUser 类对象 -->
	<s:set name="registerUser" value="#session['registerUser']" />

	用 户 名 ：
	<s:property value="#registerUser.username" />
	<br> 密 码：
	<s:property value="#registerUser.password" />
	<br> 确认密码：
	<s:property value="#registerUser.repassword" />
	<br> 年 龄：
	<s:property value="#registerUser.age" />
	<br> 邮件地址：
	<s:property value="#registerUser.email" />
	<br> 手 机：
	<s:property value="#registerUser.phone" />
	<br>

</body>
</html>