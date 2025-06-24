import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gamers_tag/utility/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class RedButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const RedButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.greyColor, // Specify the border color
            width: 1.0.sp, // Specify the border width
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.lightPrimary, AppColors.darkPrimary],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp, vertical: 0.5.sp),
          margin: EdgeInsets.all(1.sp),
          child: Text(
            text,
            style: TextStyle(
              // Use GoogleFonts.blinker() directly
              color: AppColors.whiteTextColor,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
