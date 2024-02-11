// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants{
   static const MaterialColor mainColor = Colors.indigo;
  static const String headerText = 'GPA Calculator' ;
  static final TextStyle headerStyle = GoogleFonts.quicksand(
    fontSize: 24 , fontWeight: FontWeight.w900 , color: mainColor
  );
  static BorderRadius borderRadius = BorderRadius.circular(16);

  static final TextStyle courseNumberStyle = GoogleFonts.quicksand(
    fontSize: 16 , fontWeight: FontWeight.w600 , color: mainColor
  );

  static final TextStyle gpaStyle = GoogleFonts.quicksand(
    fontSize: 55 , fontWeight: FontWeight.w800 , color: mainColor
  );
  static final EdgeInsets dropdownPadding = EdgeInsets.symmetric(horizontal: 16 , vertical: 8);
   static final  horizontalPadding = EdgeInsets.symmetric(horizontal:8);
}