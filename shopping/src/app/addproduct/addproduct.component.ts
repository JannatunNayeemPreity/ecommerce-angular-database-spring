import { Component, OnInit } from '@angular/core';
import { Product } from '../models/product';
import { ProductService } from '../services/product.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-addproduct',
  templateUrl: './addproduct.component.html',
  styleUrls: ['./addproduct.component.css']
})
export class AddproductComponent implements OnInit {

 //productid, productname, productbrand, producctategory, productunitprice, productstock
  constructor(private myservice: ProductService , private router: Router){}
  student:any;
  productid:any;
  productname:any;
  productbrand:any;
  producctategory:any;
  productunitprice:any;
  productstock:any;
  photos:any;
  loginUser:any;
    getStudentsave() {
      this.student=new Product(this.productid,this.productname,this.productbrand,this.producctategory,this.productunitprice,this.productstock,this.photos);
      this.myservice.saveStudent(this.student).subscribe((data) => {
        this.student = data;
        alert("added");
        this.router.navigateByUrl("home", { state: { response: this.loginUser } });
        alert("done");
      });
  
    }

  ngOnInit(): void {
  }

}
