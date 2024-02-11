// ignore_for_file: prefer_const_literals_to_create_immutables, file_names, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:gpa_calculator_app/Constants/app-constants.dart';

class ShowGpa extends StatelessWidget {
  final double gpa ;
  final int courseNumber;
  const ShowGpa({required this.gpa , required this.courseNumber , super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          courseNumber > 0 ? '$courseNumber course ' : 'Enter course',
          style: Constants.courseNumberStyle,
        ),
        Text(gpa >= 0 ? '${gpa.toStringAsFixed(2)}' : '0.0' ,style: Constants.gpaStyle,),
        Text('gpa' , style: Constants.courseNumberStyle,)
      ],
    );
  }
}