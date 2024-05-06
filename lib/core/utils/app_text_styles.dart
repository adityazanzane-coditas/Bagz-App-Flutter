import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle appBarTitle = GoogleFonts.playfairDisplay(
    fontSize: 23,
    fontWeight: FontWeight.w700,
    height: 29.33 / 22,
  );

  static TextStyle productTitle = GoogleFonts.playfairDisplay(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static TextStyle categoryTitle = GoogleFonts.playfairDisplay(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static TextStyle shopNowText = GoogleFonts.workSans(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static TextStyle checkAllLatestText = GoogleFonts.workSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static TextStyle categoriesTitle = GoogleFonts.playfairDisplay(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
  static TextStyle productDetailName = GoogleFonts.playfairDisplay(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
}
