import 'package:e_commerce_app/ui/screens/home_screen.dart';
import 'package:flutter/material.dart'; 

 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}