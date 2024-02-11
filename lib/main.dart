import 'package:flutter/material.dart';
import 'package:gpa_calculator_app/Constants/app-constants.dart';
import 'package:gpa_calculator_app/Widgets/gpa-calcualtor-app.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gpa Calculator',
      theme: ThemeData(
        primarySwatch: Constants.mainColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
         ),
         home: const GpaCalculatorApp(),
    );
  }
}
 

