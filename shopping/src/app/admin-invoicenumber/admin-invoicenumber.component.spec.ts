import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminInvoicenumberComponent } from './admin-invoicenumber.component';

describe('AdminInvoicenumberComponent', () => {
  let component: AdminInvoicenumberComponent;
  let fixture: ComponentFixture<AdminInvoicenumberComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AdminInvoicenumberComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AdminInvoicenumberComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
