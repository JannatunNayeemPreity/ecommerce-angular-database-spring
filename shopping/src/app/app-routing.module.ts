import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ShowproductComponent } from './showproduct/showproduct.component';
import { UpdateproductComponent } from './updateproduct/updateproduct.component';
import { AddproductComponent } from './addproduct/addproduct.component';
import { ProductdetailsComponent } from './productdetails/productdetails.component';
import { ShowcartComponent } from './showcart/showcart.component';
import { PrintinvoiceComponent } from './printinvoice/printinvoice.component';
import { Adminlogin } from './adminlogin';
import { AdminloginComponent } from './adminlogin/adminlogin.component';
import { AdminDashBoardComponent } from './admin-dash-board/admin-dash-board.component';
import { FailComponent } from './fail/fail.component';
import { PurchaserequestComponent } from './purchaserequest/purchaserequest.component';
import { AdminInvoicenumberComponent } from './admin-invoicenumber/admin-invoicenumber.component';

const routes: Routes = [
  {path:'', component:ShowproductComponent},
  {path:'home', component:ShowproductComponent},
  {path:'Showproduct', component:ShowproductComponent},
  {path:'Show_product',component:ShowproductComponent},
  {path:'savestudent',component:AddproductComponent},
  {path:'details/:id',component:ProductdetailsComponent},
  {path:'updateProduct',component:UpdateproductComponent},
  {path:'showcart',component:ShowcartComponent},
  {path:'printinvoice',component:PrintinvoiceComponent},
  {path:'adminlogin',component:AdminloginComponent},
  {path:'adminDashBoard', component:AdminDashBoardComponent},
  {path:'fail',component:FailComponent},
  {path:'addproduct',component:AddproductComponent},
  {path:'purchaserequest',component:PurchaserequestComponent},
  {path:'admin-invoice',component:AdminInvoicenumberComponent}
  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
