import 'package:flutter/material.dart';
//import 'package:untitled/pages/home.dart';
//import 'package:untitled/pages/login.dart';
import 'package:untitled/pages/register.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:
        false,
        home: Register()
    );
  }
}
