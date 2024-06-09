package com.example.demo;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "http://localhost:4200/")
@RestController
public class ProductController {
	@Autowired
	ProductDa da;

	@GetMapping("/")
	public String testspring() {

		return "Spring Boot working fine";
	}

	List<Product> students;

	@GetMapping("/all")
	public List<Product> allProducts() {
		//students = da.findAllProducts();
		students = da.findAvailableProducts();
		return students;
	}

//	---------------- verify ----------------
	@GetMapping("/getverify")
	public List<Transactionvarify> getallverify() {
		//students = da.findAllProducts();
		List<Transactionvarify> vlist = da.getalldata();
		return vlist;
	}

	@GetMapping("/student/{id}")
	public Product productById(@PathVariable("id") int id) {

		// = da.findAllStudents();
		Product s = da.findProductById(id);
		//System.out.println(s);
		return s;
	}

//	------------insert product
	@PostMapping("/save")
	public Product saveProduct(@RequestBody Product s) {
		Product st = da.save(s);
		return st;
	}


//-----------------addproducttoinvoicedetail
	//List<Invoicedetail> s;
	@PostMapping("/addproducttoinvoicedetail/{transactionnumber}/{invoicedate}/{totalquantity}/{totalprice}/{customername}/{customerphone}/{customerid}")
	public List<Invoicedetail> addSellProduct( @RequestBody  List<Invoicedetail> s, @PathVariable String transactionnumber, @PathVariable Date invoicedate, @PathVariable double totalquantity, @PathVariable double totalprice, @PathVariable String customername, @PathVariable String customerphone, @PathVariable String customerid) {

		List<Invoicedetail> invList=new ArrayList<>();

		//System.out.println("multi "+obj.toString());
//		s=new ArrayList<>();
//		s=obj.getInvoicedetail();
//		Invoice s2=  obj.getInvoice();
		//@RequestBody List<Invoicedetail> s
		//System.out.println("multi "+customername);

		ProductDa da = new ProductDa();
		invList=da.addProductToInvoicedetailtable(s);
		//System.out.println("controller "+ s);
		for(Invoicedetail s1 : s) {
			//System.out.println(s1.get);
			int sellqty=s1.getItemquantity();
			//System.out.println("controller "+ sellqty);
			da.updateProduct(s1.getProductid(),sellqty);
			//System.out.println("product id" + s1.getProduct_id());

		}
//		invoicenumber, invoicedate, totalquantity, totalprice, customername, customerphone, customerid
		java.sql.Date d = new java.sql.Date(1000);
		Invoice inv=new Invoice();
		inv.setTransactionnumber(transactionnumber);
		inv.setInvoicedate(invoicedate);
		inv.setTotalquantity(totalquantity);
		inv.setTotalprice(totalprice);
        inv.setCustomername(customername);
		inv.setCustomerphone(customerphone);
		inv.setCustomerid(customerid);
		System.out.println("controller "+inv.invoicedate);
		da.saveInvoiceData(inv);
		//System.out.println(s);
		return invList;

	}




//	------------------find  invoice  by  number----------------------

	@GetMapping("/findinvoicebynumber/{invoicenumber}")
	public Invoice findinvoicebynumber(@PathVariable String invoicenumber) {
		Invoice inv = da.findinvoicebynumber(invoicenumber);
		return inv;
	}

}
