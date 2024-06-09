package com.example.demo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminLoginDA {
	public AdminLogin save(AdminLogin s) {
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/shoppingdb", "root", "root");
			PreparedStatement ps = con.prepareStatement("INSERT INTO admin ( name,email,password,phone) VALUES(?,?,?,?)");

			ps.setString(1, s.getName());
			ps.setString(2, s.getEmail());
			ps.setInt(3, s.getPassword());
			ps.setString(4, s.getPhone());
			ps.executeUpdate();
} catch (Exception e) {
			// TODO: handle exception
		}		return s;}
public AdminLogin login(String email, int password) {
	AdminLogin e =null;
	try {
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/shoppingdb", "root", "root");
		PreparedStatement pst1 = con.prepareStatement("select * from admin where email=? AND password=?");
		pst1.setString(1, email);
		pst1.setInt(2, password);
		ResultSet rs = pst1.executeQuery();
		while (rs.next()) {
			e=new AdminLogin(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getString(4));}
} catch (Exception ex) {
		// TODO: handle exception
	}return e;}

//--------------------------AdminVerify---------------
//------------------------ varify -------------------
Connection con;
PreparedStatement pst;
ResultSet rs;

public Transactionvarify Admin_Verify(Transactionvarify s) {

	try {
		con = DriverManager.getConnection("jdbc:mysql://localhost/shoppingdb", "root", "root");
		pst = con.prepareStatement("INSERT INTO transactionvarify (mobilenumber, transactionid, transactionamount) VALUES(?,?,?)");
//		serialnumber, mobilenumber, transactionid, transactionamount
//		serialnumber, mobilenumber, transactionid, transactionamount
//		String mobilenumber;
//		String transactionid;
//		double transactionamount;

		pst.setString(1, s.getMobilenumber());
		pst.setString(2, s.getTransactionid());
		pst.setDouble(3,  s.getTransactionamount());
		 System.out.println(pst);
	pst.execute();
		 System.out.println("Preity");
	} catch (SQLException e) {
		// TODO: handle exception
	}

	return s;
}

//------------------preity-----------------------------
//==========bad===========================
//-----------------admin  Transection   Check table----------------------------
//public Invoicedetail Admin_addSellProduct(Invoicedetail s) {
//	try {
//		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/shoppingdb", "root", "root");
//		PreparedStatement ps = con.prepareStatement("INSERT INTO invoicedetail VALUES(?,?,?,?,?,?,?,?)");
////		Invoicedetail(int productid, String productname, String productbrand,
////		String productcategory, double productunitprice, int itemquantity, double itemtotalprice,
////		String invoicenumber
//		ps.setInt(1, s.getProductid());
//		ps.setString(2, s.getProductname());
//		ps.setString(3, s.getProductbrand());
//		ps.setString(4, s.getProductcategory());
//		ps.setDouble(5, s.getProductunitprice());
//
//		ps.executeUpdate();
//} catch (Exception e) {
//		// TODO: handle exception
//	}		return s;}
////
}
//
