import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gamers_tag/utility/app_colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

import '../get_controllers/experience_get_controller.dart';

class ExperienceScreen extends StatelessWidget {
  ExperienceScreen({super.key});

  final ExperienceGetController getController = Get.put(
    ExperienceGetController(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PixelPerfect(
        assetPath: 'assets/images/img_1.png',
        scale: 1.85,
        child: Scaffold(
          backgroundColor: AppColors.darkBackgroundColor,
          body: OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return mobileUi();
              } else {
                return webUi();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget mobileUi() {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 7.0.sp),
              child: Image.asset("assets/images/border.png"),
            ),
            Positioned(
              top: 20.sp,
              right: 24.sp,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SizedBox(
                  height: 30.sp,
                  width: 30.sp,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [AppColors.lightPrimary, AppColors.darkPrimary],
                      ),
                    ),
                    child: Icon(Icons.close, color: AppColors.whiteTextColor),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/left_corner.png", scale: 2),
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 30.h,
                            child: CustomPaint(
                              painter: TrapeziumPainter(
                                colors: [
                                  AppColors.darkPrimary,
                                  AppColors.lightPrimary,
                                  AppColors.lightPrimary,
                                  AppColors.darkPrimary,
                                ], // Gradient colors
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "EXPERIENCE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset("assets/images/right_corner.png", scale: 2),
                  ],
                ),
                SizedBox(height: 5.h),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0.sp,
                        vertical: 4.sp,
                      ),
                      width: 1.sw - 10.sp,
                      child: Text(
                        "Job Title",
                        style: TextStyle(
                          color: AppColors.whiteTextColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.jost().fontFamily,
                          fontSize: 16.sp
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.greyColor,
                          // Specify the border color
                          width: 1.0.sp, // Specify the border width
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.0.sp,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          color: AppColors.whiteTextColor,
                          fontFamily: GoogleFonts.jost().fontFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.sp,
                        ),
                        maxLength: 30,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 6.0.sp,
                            horizontal: 12.0.sp,
                          ),
                          // Adjust the vertical padding as needed
                          counterText: '',

                          filled: true,
                          fillColor: AppColors.greyColor,
                          isDense: true,
                          hintText: "Enter your job title",
                          hintStyle: TextStyle(
                            color: AppColors.whiteTextColor.withOpacity(0.5),
                            fontFamily: GoogleFonts.jost().fontFamily,
                            fontSize: 14.sp
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget webUi() {
    return Container();
  }
}

class TrapeziumPainter extends CustomPainter {
  final List<Color> colors;

  TrapeziumPainter({required this.colors});

  @override
  void paint(Canvas canvas, Size size) {
    // Define vertices - WIDER TOP (top edge = 80% width, bottom edge = 40% width)
    final points = [
      Offset(size.width * 0.0, -10), // Top-left
      Offset(size.width * 1.0, -10), // Top-right (wider)
      Offset(size.width * 0.88, size.height), // Bottom-right (narrower)
      Offset(size.width * 0.12, size.height), // Bottom-left (narrower)
    ];

    // Create path
    final path = Path()
      ..moveTo(points[0].dx, points[0].dy)
      ..lineTo(points[1].dx, points[1].dy)
      ..lineTo(points[2].dx, points[2].dy)
      ..lineTo(points[3].dx, points[3].dy)
      ..close();

    // Create gradient shader
    final paint = Paint()
      ..shader = LinearGradient(
        colors: colors,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(path.getBounds());

    // Draw trapezium
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
