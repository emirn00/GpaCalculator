// ignore_for_file: unused_field, unused_element, sort_child_properties_last

import 'dart:math';

import 'package:flutter/material.dart';

class Datas{
  
  static List<String> _allLetterGrades(){

    return ['AA' , 'BA' ,'BB' , 'CB', 'CC' , 'DC' , 'DD' ,'FD' , 'FF'];
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