package com.example.demo;

public class AdminLogin {
	  String name;
	   String email;
	   int password;
	   String phone;
	   
	public AdminLogin() {
		super();
	}

	public AdminLogin(String name, String email, int password, String phone) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPassword() {
		return password;
	}

	public void setPassword(int password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "AdminLogin [name=" + name + ", email=" + email + ", password=" + password + ", phone=" + phone
				+ ", getName()=" + getName() + ", getEmail()=" + getEmail() + ", getPassword()=" + getPassword()
				+ ", getPhone()=" + getPhone() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	   
}
