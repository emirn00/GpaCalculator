// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants{
   static const MaterialColor mainColor = Colors.indigo;
  static const String headerText = 'GPA Calculator' ;
  static final TextStyle headerStyle = GoogleFonts.quicksand(
    fontSize: 24 , fontWeight: FontWeight.w900 , color: mainColor
  );
  static BorderRadius borderRadius = BorderRadius.circular(24);
}