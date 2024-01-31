import 'package:flutter/material.dart';
import 'package:e_restaurant/FoodList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Restaurant',
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: FoodList(),
    );
  }
}
