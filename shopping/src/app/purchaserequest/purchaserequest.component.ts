import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ProductService } from '../services/product.service';
import { Invoice } from '../models/invoice';
import { Transactionvarify } from '../models/transactionvarify';

@Component({
  selector: 'app-purchaserequest',
  templateUrl: './purchaserequest.component.html',
  styleUrls: ['./purchaserequest.component.css']
})
export class PurchaserequestComponent implements OnInit {
  // <!-- serialnumber, mobilenumber, transactionid, transactionamount -->
  
  mobilenumber:any;
  transactionid:any;
  transactionamount:any;


  getAllData: any;
  loginUser:any;
  constructor(private router: Router, private myservice: ProductService) {
    
  }
  veryfy(){
      this.getAllData=new Transactionvarify(this.mobilenumber,this.transactionid,this.transactionamount);
      this.myservice.Admin_veriFy(this.getAllData).subscribe((data) => {
        this.getAllData = data;
        alert("added");
        this.router.navigateByUrl("home", { state: { response: this.loginUser } });
        alert("done");
      });
  

  }
  ngOnInit(): void {
  }

}
