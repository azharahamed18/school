import { HttpClient } from '@angular/common/http';
import { Component, OnInit, ViewChild } from '@angular/core';
import { NgForm } from '@angular/forms';
import { User } from './user.model';

@Component({
  selector: 'app-manage-user',
  templateUrl: './manage-user.component.html',
  styleUrls: ['./manage-user.component.css']
})
export class ManageUserComponent implements OnInit {
  @ViewChild('userForm') userForm:NgForm
  users=[]
  constructor(private http:HttpClient) { }

  ngOnInit(): void {
  }
  onAddUser(userData:User){
    console.log(userData)
this.users.push(userData)
  }
  fetchUser(){
    this.http.get
  }
}
