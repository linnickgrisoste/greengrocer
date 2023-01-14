import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle regular(double size, Color color) {
    return GoogleFonts.workSans(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle light(double size, Color color) {
    return GoogleFonts.workSans(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle medium(double size, Color color) {
    return GoogleFonts.workSans(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle bold(double size, Color color, {TextDecoration? textDecoration}) {
    return GoogleFonts.workSans(
      color: color,
      fontSize: size,
      decoration: textDecoration,
      fontWeight: FontWeight.w700,
    );
  }
}
