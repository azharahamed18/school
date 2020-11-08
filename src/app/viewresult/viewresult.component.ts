import { ResultsService } from '../apppservices/results.service';
import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';

@Component({
  selector: 'app-viewresult',
  templateUrl: './viewresult.component.html',
  styleUrls: ['./viewresult.component.css']
})
export class ViewresultComponent implements OnInit {

  constructor(private _result:ResultsService) { }
  dataTitle ='Mark Statement';
  fetching = false;
  stid:string

@ViewChild('id')id:ElementRef;
@ViewChild('name')name:ElementRef;
@ViewChild('english')english:ElementRef;
@ViewChild('sclanguage')sclanguage:ElementRef;
@ViewChild('mark')mark:ElementRef;
@ViewChild('maths')maths:ElementRef;
@ViewChild('science')science:ElementRef;
@ViewChild('ss')ss:ElementRef;

editIndex:number;
  products =[
 
  ]
  ngOnInit(): void {
    this.onFetchProducts()
  }
  onEditproduct(index:number){
    
    this.editIndex=index;
   console.log(this.products[index])
   this.id.nativeElement.value = this.products[index].id;
   this.name.nativeElement.value = this.products[index].name;
   this.english.nativeElement.value =this.products[index].english;
   this.sclanguage.nativeElement.value =this.products[index].sclanguage;
   this.mark.nativeElement.value = this.products[index].mark;
   this.maths.nativeElement.value =this.products[index].maths;
   this.science.nativeElement.value = this.products[index].science;
   this.ss.nativeElement.value =this.products[index].ss;
   this.stid= this.products[index].id;
  }
  
  onFetchProducts(){
    this.fetching=true;
    this._result.fetchProducts().subscribe(
      (response)=>{
        //console.log(response);
        const data= JSON.stringify(response)
       // console.log(data)
        this.products=JSON.parse(data)
        this.fetching=false;
      }, 
        (err) => console.log(err),
       
        
    )
  }
}
