import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ResultsService {
url='https://shopping-977b4.firebaseio.com/products.json'
  constructor(private http:HttpClient) { }
  saveProducts(products:any[]){
    return this.http.put(this.url,products)
   // return this.http.post(this.url,products)
  }
  fetchProducts(){
    return this.http.get(this.url)
  }
}
