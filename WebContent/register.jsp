<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>用户注册界面</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
body {
	background-image: url("background.gif");
	background-size: 100%;
	background-repeat: no-repeat;
}

h3 {
	font-size: 23px;
	font-family: cursive;
	text-shadow: 1px 2px 2px #333;
	color: deeppink;
}

/* 外面的透明边框 */
#login_frame {
	width: 400px;
	height: 550px;
	padding: 13px;
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -200px;
	margin-top: -200px;
	background-color: rgba(0, 0, 0, 0.1);
	border-radius: 10px;
	text-align: center;
}

.form_style {
	margin-left: 30px;
}

.text_field {
	width: 278px;
	height: 25px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	border: 0;
}

#btn_login {
	font-size: 14px;
	font-family: 宋体;
	width: 120px;
	height: 28px;
	line-height: 28px;
	text-align: center;
	color: white;
	background-color: #3BD9FF;
	border-radius: 6px;
	border: 0;
	margin: 10px 80px;
}
</style>
</head>

<body>

	<div id="login_frame">

		<h3>用户注册</h3>
		<!-- 用户注册表单 -->
		<!-- validate="true"表示客户端校验 -->
		<s:form action="user_register" validate="true" class="form_style">
			<!--<span style="color: red;"><s:actionerror /></span>-->

			<!-- label处使用Key输出国际化资源 -->
			<s:textfield name="username" class="text_field"
				key="register.username" labelposition="top" />
			<s:password name="password" class="text_field"
				key="register.password" labelposition="top" />
			<s:password name="repassword" class="text_field"
				key="register.repassword" labelposition="top" />
			<s:textfield name="age" class="text_field" key="register.age"
				labelposition="top" />
			<s:textfield name="email" class="text_field" key="register.email"
				labelposition="top" />
			<s:textfield name="phone" class="text_field" key="register.phone"
				labelposition="top" />

			<s:submit value="同意协议并提交" id="btn_login" />

		</s:form>
	</div>
</body>
</html>
