import { BrowserModule } from '@angular/platform-browser';
import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ManageResultComponent } from './manage-result/manage-result.component';

import { HttpClientModule } from '@angular/common/http';
import { ManageUserComponent } from './manage-user/manage-user.component';
import { ResultsService } from './apppservices/results.service';
import{ResultlistComponent} from './resultlist/resultlist.component';
import { ViewresultComponent } from './viewresult/viewresult.component'
@NgModule({
  declarations: [
    AppComponent,
    ManageResultComponent,
    ManageUserComponent,
    ResultlistComponent,
    ViewresultComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
   
    HttpClientModule,
    CommonModule
  ],
  providers: [ResultsService],
  bootstrap: [AppComponent]
})
export class AppModule { }
