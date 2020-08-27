import 'package:flutter/material.dart';
import 'package:marine_life/screens/animals_details.dart';
import 'package:marine_life/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marine Life',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimalDetails(title: 'Animals'),
    );
  }
}


