import { ResultsService } from './../apppservices/results.service';
import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
 

@Component({
  selector: 'app-manage-result',
  templateUrl: './manage-result.component.html',
  styleUrls: ['./manage-result.component.css']
})
export class ManageResultComponent implements OnInit {

  constructor(private _result:ResultsService) { }
dataTitle ='Mark Sheet';
stid:string
fetching = false;
@ViewChild('id')id:ElementRef;
@ViewChild('name')name:ElementRef;
@ViewChild('english')english:ElementRef;
@ViewChild('sclanguage')sclanguage:ElementRef;
@ViewChild('mark')mark:ElementRef;
@ViewChild('maths')maths:ElementRef;
@ViewChild('science')science:ElementRef;
@ViewChild('ss')ss:ElementRef;
editMode:boolean=false;
editIndex:number;


products =[
 
]
  ngOnInit(): void {
//  this.onFetchProducts()
  }
  onAddProducts(id,name,english,sclanguage,mark,maths,science,ss){
    if(this.editMode){
this.products[this.editIndex]={
  id:id.value,
    name:name.value,
    
    english:english.value,
    sclanguage:sclanguage.value,
    mark:mark.value,
    maths:maths.value,
    science:science.value,
    ss:ss.value,
}
this.editMode=false
this.id.nativeElement.value ="" ;
   this.name.nativeElement.value = "";
   this.english.nativeElement.value ="";
   this.sclanguage.nativeElement.value ="" ;
   this.mark.nativeElement.value = "";
   this.maths.nativeElement.value ="";
   this.science.nativeElement.value = "";
   this.ss.nativeElement.value ="";

    }
  else{
    this.products.push(
      {id:id.value,
        name:name.value,
        
        english:english.value,
    sclanguage:sclanguage.value,
    mark:mark.value,
    maths:maths.value,
    science:science.value,
    ss:ss.value,
      }

    )
  
  }
  //this.onSaveProducts() 
  }

  onDeleteproduct(id:number){
    if (confirm("do you want to delete?")){
      this.products.splice(id,1)
    }

  }
  
  onEditproduct(index:number){
    this.editMode=true;
    this.editIndex=index;
   console.log(this.products[index])
   this.id.nativeElement.value = this.products[index].id;
   this.name.nativeElement.value = this.products[index].name;
   this.english.nativeElement.value =this.products[index].english;
   this.sclanguage.nativeElement.value =this.products[index].sclanguage;
   this.mark.nativeElement.value = this.products[index].mark;
   this.maths.nativeElement.value =this.products[index].maths;
   this.science.nativeElement.value = this.products[index].science
   this.ss.nativeElement.value =this.products[index].ss
   this.stid= this.products[index].id;
  }
  onSaveProducts(){
   this._result.saveProducts(this.products).subscribe(
   (response)=>console.log(response),
     (err) => console.log(err)    )
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
