import 'package:flutter/material.dart';
import 'signup.dart';
void main()=>runApp(Myapp());
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'signup page',
     home: signup(),      
    );
  }
}