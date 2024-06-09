package com.example.demo;

public class Transactionvarify {

//	serialnumber, mobilenumber, transactionid, transactionamount
	String mobilenumber;
	String transactionid;
	double transactionamount;
	public Transactionvarify() {
		super();
	}
	public Transactionvarify(String mobilenumber, String transactionid, double transactionamount) {
		super();
		this.mobilenumber = mobilenumber;
		this.transactionid = transactionid;
		this.transactionamount = transactionamount;
	}
	public String getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public String getTransactionid() {
		return transactionid;
	}
	public void setTransactionid(String transactionid) {
		this.transactionid = transactionid;
	}
	public double getTransactionamount() {
		return transactionamount;
	}
	public void setTransactionamount(double transactionamount) {
		this.transactionamount = transactionamount;
	}
	@Override
	public String toString() {
		return "Transactionvarify [mobilenumber=" + mobilenumber + ", transactionid=" + transactionid
				+ ", transactionamount=" + transactionamount + ", getMobilenumber()=" + getMobilenumber()
				+ ", getTransactionid()=" + getTransactionid() + ", getTransactionamount()=" + getTransactionamount()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	
}
