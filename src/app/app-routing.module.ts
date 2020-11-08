import { ViewresultComponent } from './viewresult/viewresult.component';
import { ManageResultComponent } from './manage-result/manage-result.component';

import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ResultlistComponent } from './resultlist/resultlist.component';

const routes: Routes = [
  {path:'manage-result', component:ManageResultComponent},
  
  {path:'resultlist', component:ResultlistComponent},
  {path:'viewresult', component:ViewresultComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
