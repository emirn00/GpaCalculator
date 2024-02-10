// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:gpa_calculator_app/Constants/app-constants.dart';

class GpaCalculatorApp extends StatefulWidget {
  const GpaCalculatorApp({super.key});

  @override
  State<GpaCalculatorApp> createState() => _GpaCalculatorAppState();
}

class _GpaCalculatorAppState extends State<GpaCalculatorApp> {
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
            child: Container(
              child: Text('gpa'),
              color: Colors.yellow,
            ),
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
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.abc) ),
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
}