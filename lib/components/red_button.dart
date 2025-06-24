import 'package:flutter/material.dart';
import 'package:gamers_tag/utility/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class RedButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const RedButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          onPressed();
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.lightPrimary, AppColors.darkPrimary],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Text(
            text,
            style: GoogleFonts.blinker(
              // Use GoogleFonts.blinker() directly
              color: AppColors.whiteTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
