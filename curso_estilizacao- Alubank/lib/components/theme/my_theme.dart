import 'package:alubank/components/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme = ThemeData(
  primarySwatch: ThemeColors.primaryColor,
  primaryColor: ThemeColors.primaryColor,
  brightness: Brightness.dark,
  textTheme: GoogleFonts.ralewayTextTheme(
    ThemeData.dark().textTheme.copyWith(
          bodyMedium: const TextStyle(fontSize: 16),
          bodyLarge: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          titleMedium: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
  ),
);
