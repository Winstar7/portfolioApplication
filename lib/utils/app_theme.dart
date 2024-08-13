import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:port_folio_app/utils/app_colors.dart";
class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      canvasColor: Colors.black,
      hintColor: Colors.grey.shade600,
      cardColor: AppColors.lightAppCardColor,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.aBeeZee(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        displayMedium: GoogleFonts.aBeeZee(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        displaySmall: GoogleFonts.aBeeZee(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.aBeeZee(
          fontSize:  18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyMedium: GoogleFonts.aBeeZee(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade700,
        ),
        titleLarge: GoogleFonts.aBeeZee(
              fontSize:20,
              fontWeight:FontWeight.bold,
            color:Color(0xff6A33FF)
            ),
        )

      );
  static ThemeData darkTheme = ThemeData(
    canvasColor: Colors.white,
    hintColor: Colors.grey.shade600,
    scaffoldBackgroundColor: Colors.black,
    cardColor: AppColors.darkAppCardColor,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.aBeeZee(
        fontSize: 35,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.aBeeZee(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displaySmall: GoogleFonts.aBeeZee(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.aBeeZee(
        fontSize:15,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.aBeeZee(
        fontSize:17,
        fontWeight: FontWeight.w400,
        color: Colors.grey.shade700,
      ),
        titleLarge: GoogleFonts.aBeeZee(
            fontSize:20,
            fontWeight:FontWeight.bold,
            color:Color(0xff6A33FF)
        )
    ),
  );

}
