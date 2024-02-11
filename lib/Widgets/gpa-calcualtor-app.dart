// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, unused_element

import 'package:flutter/material.dart';
import 'package:gpa_calculator_app/Constants/app-constants.dart';
import 'package:gpa_calculator_app/Widgets/show-gpa.dart';
import 'package:gpa_calculator_app/helper/data_helper.dart';

class GpaCalculatorApp extends StatefulWidget {
  const GpaCalculatorApp({super.key});

  @override
  State<GpaCalculatorApp> createState() => _GpaCalculatorAppState();
}

class _GpaCalculatorAppState extends State<GpaCalculatorApp> {
  double selectedLetterValue = 4 ;
  double selectedCreditValue = 1 ;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title:  Center(child: Text(Constants.headerText , style: Constants.headerStyle,),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
               Expanded(
                flex: 2,
            child: _buildForm(),
          ),
           Expanded(
            child: ShowGpa(courseNumber: 0 , gpa: 0),
          )
            ],
          ),
          Expanded(
            child: Container(
              child: Text('List parts'),
              color: Colors.blue,
            ),
          )
        ],
      )
    );
  }
  
  Widget _buildForm() {
    return Form(
      key: formKey ,
      child: Column(
        children: [
          Padding(
            padding: Constants.horizontalPadding,
            child: _buildTextFormField()),
            SizedBox(
              height: 5,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                child: _buildLetters(),
                ),
              ),      
                Expanded(
                  child: Padding(padding: Constants.horizontalPadding,
                                child: _buildCredits(),
                                ),
                ), 
                IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios , color: Constants.mainColor, size: 30,) )
            ],
          ),
          SizedBox(height: 5,)

        ],
      ),
      );
  }
  
  Widget _buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Calculus',
        border: OutlineInputBorder(
          borderRadius: Constants.borderRadius,
          borderSide: BorderSide.none
        ),
        filled: true,
        fillColor: Constants.mainColor.shade100.withOpacity(0.3)
      ),
    );
  }
  
  _buildLetters() {
  
    return Container(
      alignment: Alignment.center,
      padding: Constants.dropdownPadding ,
      decoration: BoxDecoration(color: Constants.mainColor.shade100.withOpacity(0.3),
      borderRadius: Constants.borderRadius
      ),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Constants.mainColor.shade300,
        value: selectedLetterValue,
        onChanged:(value) {
          setState(() {
           selectedLetterValue = value! ; 
          });          
        },
        underline: Container(),
        items: 
          Datas.grades(),
      ),
      
    );
  }

  _buildCredits() {
  
    return Container(
      alignment: Alignment.center,
      padding: Constants.dropdownPadding ,
      decoration: BoxDecoration(color: Constants.mainColor.shade100.withOpacity(0.3),
      borderRadius: Constants.borderRadius
      ),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Constants.mainColor.shade300,
        value: selectedCreditValue,
        onChanged:(value) {
          setState(() {
           selectedCreditValue = value! ; 
          });          
        },
        underline: Container(),
        items: 
          Datas.allCredits()
      ),
      
    );
  }
}