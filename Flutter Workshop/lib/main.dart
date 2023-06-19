import 'package:flutter/material.dart';
import 'package:profile_app/pages/homepage.dart'; //import all the widget to application
//body= display at the middle section
void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: "EB Garamond"
      ),
      home: HomePage()
    ),
  ); //to run the application
}
      
