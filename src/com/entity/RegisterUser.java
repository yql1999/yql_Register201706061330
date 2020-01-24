package com.entity;

import java.io.Serializable;

//”√ªß¿‡
public class RegisterUser implements Serializable {
	private static final long serialVersionUID = 1L;

	private String email = "";
	private String username = "";
	private String password = "";
	private String repassword = "";
	private int age = 0;
	private String phone = "";

	public RegisterUser() {

	}

	public RegisterUser(String username, String password, String repassword, int age, String email, String phone) {
		this.username = username;
		this.password = password;
		this.repassword = repassword;
		this.age = age;
		this.email = email;
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
