// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

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
  double selectedValue = 4.0 ;
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
          _buildTextFormField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                _buildLetters(),
                IconButton(
                onPressed: (){},
                icon: Icon(Icons.abc) ),
                IconButton(
                onPressed: (){},
                icon: Icon(Icons.abc) )
            ],
          )

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
        ),
        filled: true,
        fillColor: Constants.mainColor.shade100.withOpacity(0.3)
      ),
    );
  }
  
  _buildLetters() {
  
    return Container(
      padding: Constants.dropdownPadding ,
      decoration: BoxDecoration(color: Constants.mainColor.shade100.withOpacity(0.3),
      borderRadius: Constants.borderRadius
      ),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Constants.mainColor.shade300,
        value: selectedValue,
        onChanged:(value) {
          setState(() {
           selectedValue = value! ; 
          });          
        },
        underline: Container(),
        items: 
          Datas.grades(),
      ),
      
    );
  }
}