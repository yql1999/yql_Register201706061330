package com.action;

import com.entity.RegisterUser;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String username;
	private String password;
	private String repassword;
	private int age;
	private String email;
	private String phone;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String register() throws Exception {

		RegisterUser registerUser = new RegisterUser();
		registerUser.setUsername(username);
		registerUser.setPassword(password);
		registerUser.setRepassword(repassword);
		registerUser.setAge(age);
		registerUser.setEmail(email);
		registerUser.setPhone(phone);

		// 将用户对象存到session中
		ActionContext.getContext().getSession().put("registerUser", registerUser);
		return "success";
		/*
		 * RegisterUserService userService = new RegisterUserService();
		 * 
		 * if (userService.register(registerUser) == 1) {
		 * this.addActionError("用户名或密码不能为空！"); return "register"; } else if
		 * (userService.register(registerUser) == 2) {
		 * this.addActionError("用户名长度必须在8位以上，包含数字和字符！"); return "register"; } else if
		 * (userService.register(registerUser) == 3) {
		 * this.addActionError("手机号不符合标准格式：号码位数必须为11位！"); return "register"; } else if
		 * (userService.register(registerUser) == 0) { System.out.println("注册成功！");
		 * return "success"; } else { this.addActionError("邮箱不符合邮箱格式，请重新填写！"); return
		 * "register"; }
		 */
	}

}
