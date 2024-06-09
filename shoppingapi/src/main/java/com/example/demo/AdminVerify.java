package com.example.demo;


public class AdminVerify {
	String customerphone;
	String transactionnumber;
	double totalprice;
	public AdminVerify() {
		super();
	}
	public AdminVerify(String customerphone, String transactionnumber, double totalprice) {
		super();
		this.customerphone = customerphone;
		this.transactionnumber = transactionnumber;
		this.totalprice = totalprice;
	}
	public String getCustomerphone() {
		return customerphone;
	}
	public void setCustomerphone(String customerphone) {
		this.customerphone = customerphone;
	}
	public String getTransactionnumber() {
		return transactionnumber;
	}
	public void setTransactionnumber(String transactionnumber) {
		this.transactionnumber = transactionnumber;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	@Override
	public String toString() {
		return "AdminVerify [customerphone=" + customerphone + ", transactionnumber=" + transactionnumber
				+ ", totalprice=" + totalprice + ", getCustomerphone()=" + getCustomerphone()
				+ ", getTransactionnumber()=" + getTransactionnumber() + ", getTotalprice()=" + getTotalprice()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	

}
