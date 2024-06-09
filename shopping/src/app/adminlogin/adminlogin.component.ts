import { Component, OnInit } from '@angular/core';
import { ProductService } from '../services/product.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-adminlogin',
  templateUrl: './adminlogin.component.html',
  styleUrls: ['./adminlogin.component.css']
})
export class AdminloginComponent implements OnInit {

  constructor(private myservice: ProductService, private router: Router) { }

  email: any;
  password: any;
  loginUser: any;

  login(){
    this.myservice.loginn(this.email, this.password).subscribe((x) => {
      this.loginUser = x;
      if ((this.loginUser != null)) {
        this.router.navigateByUrl("adminDashBoard", { state: { response: this.loginUser } });
      } else {
        this.router.navigateByUrl("fail");
      }
    });


  }


  ngOnInit(): void {
  }

}
