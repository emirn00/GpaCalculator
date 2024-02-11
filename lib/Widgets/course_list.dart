// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_is_empty

import 'package:flutter/material.dart';
import 'package:gpa_calculator_app/Constants/app-constants.dart';
import 'package:gpa_calculator_app/helper/data_helper.dart';
import 'package:gpa_calculator_app/model/course.dart';

class CourseList extends StatelessWidget {
  final Function onDismiss ;
  const CourseList({required this.onDismiss , super.key});

  @override
  Widget build(BuildContext context) {

    List<Course> allCourses = Datas.courses ;

    return allCourses.length >0 ? ListView.builder(itemCount: allCourses.length, itemBuilder: (context , index){
      return Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.startToEnd,
        onDismissed: (a){
          onDismiss(index);
        },
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Card(
            child: ListTile(
              title: Text(allCourses[index].name), 
                subtitle: Text(allCourses[index].courseValue.toString()),       
            ),
          ),
        ),
      );
    }) : 
    Center(
      child: Container(
        child: Text('Please Add Courses' , style: Constants.headerStyle,),
      ),
    );
    
  }
}