import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color blueClr = Color.fromARGB(255, 66, 90, 227);
const Color greenClr = Color.fromARGB(255, 49, 195, 13);
const Color orangeClr = Color.fromARGB(255, 229, 141, 47);
const Color redClr = Color.fromARGB(255, 237, 68, 68);
const Color yellow1Clr = Color.fromARGB(255, 232, 232, 4);
const Color pink2Clr = Color.fromARGB(255, 224, 78, 250);
const Color purpelClr = Color.fromARGB(255, 159, 70, 255);
const Color pinkClr = Color.fromARGB(255, 255, 70, 129);
const Color blue1Clr = Color.fromARGB(255, 16, 201, 238);
const Color yellowClr = Color(0xFFFFB746);

const Color white = Color.fromARGB(255, 255, 255, 255);
const Color dark = Color(0xFF121212);

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
      textStyle: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey));
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
      textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900));
}

TextStyle get titleStyle {
  return GoogleFonts.lato(
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800));
}

TextStyle get subTitleStyle {
  return GoogleFonts.lato(
      textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400));
}
