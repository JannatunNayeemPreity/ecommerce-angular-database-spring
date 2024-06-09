package com.example.demo;



//	import java.util.ArrayList;
//	import java.util.List;
//	import java.util.Optional;
//
//	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.web.bind.annotation.CrossOrigin;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.RequestBody;
	import org.springframework.web.bind.annotation.RestController;
	@CrossOrigin(origins="http://localhost:4200/")
	@RestController
	public class AdminLoginController {
		AdminLoginDA  da;
		@PostMapping( "/insert")
		public AdminLogin doSave(@RequestBody AdminLogin s) {
			
			AdminLoginDA da = new AdminLoginDA();
			AdminLogin data=  da.save(s);
			return data;
		}
		
		@GetMapping("/{email}/{password}")
		public AdminLogin m3(@PathVariable String email,@PathVariable int password) {
			AdminLoginDA da= new AdminLoginDA();
			AdminLogin data = da.login(email, password);
			return data;
		}
//		---------------- Admin_veriFy ----------------preity
		@PostMapping("/Admin_veriFy") 
public Transactionvarify Admin_Verify(@RequestBody Transactionvarify s) {
//			System.out.println(s);
			AdminLoginDA da = new AdminLoginDA();
			Transactionvarify data=  da.Admin_Verify(s);
			return data;
		}
		 
		
//---------------------------added by preity----------------------
//	//List<Invoicedetail> s;=====================bad========================
//	@PostMapping("/Admin_addproducttoinvoicedetail/{transactionnumber}/{invoicedate}/{totalquantity}/{totalprice}/{customername}/{customerphone}/{customerid}")
//	public List<Invoicedetail> Admin_addSellProduct( @RequestBody  List<Invoicedetail> s, @PathVariable String transactionnumber, @PathVariable Date invoicedate, @PathVariable double totalquantity, @PathVariable double totalprice, @PathVariable String customername, @PathVariable String customerphone, @PathVariable String customerid) {
//		
//		List<Invoicedetail> invList=new ArrayList<>();
//
//		ProductDa da = new ProductDa();
//		invList=da.addProductToInvoicedetailtable(s);
//		return invList;
//	}
	}
	