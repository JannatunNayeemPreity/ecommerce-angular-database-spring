import { Component, OnInit } from '@angular/core';
import { ProductService } from '../services/product.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-admin-invoicenumber',
  templateUrl: './admin-invoicenumber.component.html',
  styleUrls: ['./admin-invoicenumber.component.css']
})
export class AdminInvoicenumberComponent implements OnInit {

 


  constructor(private myservice: ProductService, private router: Router) {
    
  }
 

  ngOnInit(): void {
  }

  id:any;
  searchid: any;
  
  search() {
    this.myservice.search(this.id).subscribe((x) =>{
      this.searchid = x
    });
 
  }
}
