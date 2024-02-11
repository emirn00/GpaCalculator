// ignore_for_file: unused_field, unused_element, sort_child_properties_last, unused_local_variable, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:gpa_calculator_app/model/course.dart';

class Datas{
  static List<Course> courses = [];
  static addCourse(Course course){
    courses.add(course);
  }
  static List<String> _allLetterGrades(){

    return ['AA' , 'BA' ,'BB' , 'CB', 'CC' , 'DC' , 'DD' ,'FD' , 'FF'];
  }
  static calculateGpa(){
    double totalGrade  = 0 ; 
    double totalCredits = 0;

    courses.forEach((element) {
      totalGrade = totalGrade + (element.credit *  element.courseValue);
      totalCredits += element.credit;
    }
    );
    return totalGrade / totalCredits ;
  }

  static double _letterToGrade(String letter){
    switch(letter){

      case 'AA' :
      return 4.0 ;
      case 'BA' :
      return 3.5 ;
      case 'BB' :
      return 3.0 ;
      case 'CB' :
      return 2.5 ;
      case 'CC' :
      return 2.0 ;
      case 'DC' :
      return 1.5 ;
      case 'DD' :
      return 1.0 ;
      case 'FD' :
      return 0.5 ;
      case 'FF' :
      return 0.0 ;
      default : 
      return 1;  
    }
  }
  static List<DropdownMenuItem<double>> grades(){
    return _allLetterGrades().map((e) => DropdownMenuItem(child: Text(e),value: _letterToGrade(e),)).toList();
  } 

  static List<int> credits(){
    return List.generate(10, (index) => index+1).toList();
  }
  static List<DropdownMenuItem<double>> allCredits(){

    return credits().map((e) => DropdownMenuItem(child: Text(e.toString()), value: e.toDouble(),)).toList();
  }
}