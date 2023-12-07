import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> Registration({
  required BuildContext context,
  required String username,
  required String password,
  required String name,
  required String email,
  required String phoneNumber}) async {
  var data={ 'username':username,
    'password':password,
    'name':name,
    'email':email,
    'phone':phoneNumber}
  ;
 var response= await http.post(Uri.parse('https://ecommerce-s2.onrender.com/api/register'),
  headers: {
    'Content-Type': 'application/x-www-form-urlencoded'
  },
    body: data,);
  print(response.body);
  if(response.statusCode==200){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registration Succesful")));
  }
  print(data);
}