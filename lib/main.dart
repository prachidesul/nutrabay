import 'package:flutter/material.dart';
import'package:nutrabay/homePage.dart';
import 'package:nutrabay/login.dart';
import 'package:nutrabay/register.dart';
import 'package:nutrabay/login_otp.dart';
import 'package:nutrabay/register.dart';
void main() {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home:HomePage(items: [],), 
     );
   }
 }