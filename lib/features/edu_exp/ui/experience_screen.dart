import 'package:dotted_line_flutter/dotted_line_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gamers_tag/components/red_button.dart';
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
      child: kDebugMode ? PixelPerfect(
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
      ) : Scaffold(
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
    );
  }

  Widget mobileUi() {
    return ListView(
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
                        horizontal: 5.0.sp,
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
                          counterText: '',
                          filled: true,
                          fillColor: AppColors.greyColor,
                          isDense: true,
                          hintText: "Enter your job title",
                          hintStyle: TextStyle(
                            color: AppColors.whiteTextColor.withOpacity(0.5),
                            fontFamily: GoogleFonts.jost().fontFamily,
                            fontSize: 14.sp,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide
                                .none, // To remove the default border
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                              color: AppColors
                                  .greyColor, // Customize the border color if needed
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(
                                  0.5), // Customize if needed
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                              color: Colors
                                  .red, // Customize the error border color if needed
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0.sp,
                        vertical: 4.sp,
                      ),
                      width: 1.sw - 10.sp,
                      child: Text(
                        "Company Name",
                        style: TextStyle(
                            color: AppColors.whiteTextColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts
                                .jost()
                                .fontFamily,
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
                        horizontal: 5.0.sp,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          color: AppColors.whiteTextColor,
                          fontFamily: GoogleFonts
                              .jost()
                              .fontFamily,
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
                          counterText: '',
                          filled: true,
                          fillColor: AppColors.greyColor,
                          isDense: true,
                          hintText: "Enter your company name",
                          hintStyle: TextStyle(
                            color: AppColors.whiteTextColor.withOpacity(0.5),
                            fontFamily: GoogleFonts
                                .jost()
                                .fontFamily,
                            fontSize: 14.sp,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide
                                .none, // To remove the default border
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                              color: AppColors
                                  .greyColor, // Customize the border color if needed
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(
                                  0.5), // Customize if needed
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                              color: Colors
                                  .red, // Customize the error border color if needed
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0.sp,
                        vertical: 4.sp,
                      ),
                      width: 1.sw - 10.sp,
                      child: Text(
                        "Employment Type",
                        style: TextStyle(
                            color: AppColors.whiteTextColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts
                                .jost()
                                .fontFamily,
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
                        horizontal: 5.0.sp,
                      ),
                      child: InkWell(
                        onTap: () {
                          // Rotate to the next employment type
                          int nextIndex = (getController
                              .selectedEmploymentTypeIndex.value + 1) %
                              getController.employmentTypes.length;
                          getController.selectedEmploymentTypeIndex.value =
                              nextIndex;
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.0.sp,
                            vertical: 4.sp,
                          ),
                          width: 1.sw - 10.sp,
                          child: Obx(() =>
                              Text(
                                getController.employmentTypes[getController
                                    .selectedEmploymentTypeIndex.value],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.lightPrimary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp),
                              ),
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.greyColor,
                            border: Border.all(
                              color: AppColors.greyColor,
                              // Specify the border color
                              width: 1.0.sp, // Specify the border width
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 16.h),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0.sp,
                        vertical: 4.sp,
                      ),
                      width: 1.sw - 10.sp,
                      child: Text(
                        "Location",
                        style: TextStyle(
                            color: AppColors.whiteTextColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts
                                .jost()
                                .fontFamily,
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
                        horizontal: 5.0.sp,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          color: AppColors.whiteTextColor,
                          fontFamily: GoogleFonts
                              .jost()
                              .fontFamily,
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
                          counterText: '',
                          filled: true,
                          fillColor: AppColors.greyColor,
                          isDense: true,
                          hintText: "Search for location of the company",
                          hintStyle: TextStyle(
                            color: AppColors.whiteTextColor.withOpacity(0.5),
                            fontFamily: GoogleFonts
                                .jost()
                                .fontFamily,
                            fontSize: 14.sp,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide
                                .none, // To remove the default border
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                              color: AppColors
                                  .greyColor, // Customize the border color if needed
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(
                                  0.5), // Customize if needed
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                              color: Colors
                                  .red, // Customize the error border color if needed
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.0.sp,
                            vertical: 4.sp,
                          ),
                          width: 1.sw - 10.sp,
                          child: Text(
                            "Company LinkedIn / Website",
                            style: TextStyle(
                                color: AppColors.whiteTextColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts
                                    .jost()
                                    .fontFamily,
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
                            horizontal: 5.0.sp,
                          ),
                          child: TextFormField(
                            style: TextStyle(
                              color: AppColors.whiteTextColor,
                              fontFamily: GoogleFonts
                                  .jost()
                                  .fontFamily,
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
                              counterText: '',
                              filled: true,
                              fillColor: AppColors.greyColor,
                              isDense: true,
                              hintText: "Enter the Company website or LinkedIn profile",
                              hintStyle: TextStyle(
                                color: AppColors.whiteTextColor.withOpacity(
                                    0.5),
                                fontFamily: GoogleFonts
                                    .jost()
                                    .fontFamily,
                                fontSize: 14.sp,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide
                                    .none, // To remove the default border
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide(
                                  color: AppColors
                                      .greyColor, // Customize the border color if needed
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide(
                                  color: AppColors.greyColor.withOpacity(
                                      0.5), // Customize if needed
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide(
                                  color: Colors
                                      .red, // Customize the error border color if needed
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 36.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0.sp),
                          child: RedButton(text: "CONFIRM",
                            onPressed: () {},
                            thick: true,
                            expanded: true,),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 28.sp,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 34.h,
                  child: DottedLine(
                    axis: Axis.vertical,
                    colors: [AppColors.darkBackgroundColor],
                    dashGap: 3.sp, dashWidth: 1.5.sp,),
                ),
                Container(
                  height: 6.w, width: 6.w,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        AppColors.lightPrimary, AppColors.darkPrimary
                      ])
                  ),),
                SizedBox(
                  height: 35.h,
                  child: DottedLine(
                    axis: Axis.vertical,
                    colors: [AppColors.greyColor],
                    dashGap: 3.sp, dashWidth: 1.5.sp,),
                ),

              ],
            ),
            SizedBox(width: 3.sp,),
            Column(
              children: [
                SizedBox(height: 12.h,),
                SizedBox(
                  height: 1.5.sp,
                  width: 4.sp,
                  child: DottedLine(
                    axis: Axis.horizontal,
                    colors: [AppColors.greyColor],
                    dashGap: 3.sp, dashWidth: 1.5.sp,),
                ),
              ],
            ),
            SizedBox(width: 3.sp,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.0.sp, vertical: 8.sp),
                  width: 1.sw - 68.sp,
                  child: Text("Starting Date", style: TextStyle(
                      color: AppColors.whiteTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      fontFamily:
                      GoogleFonts
                          .jost()
                          .fontFamily),),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.greyColor, // Specify the border color
                      width: 1.0.sp, // Specify the border width
                    ),

                  ),),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.0.sp, vertical: 8.sp),
                  width: 1.sw - 67.sp,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("DATE", style: TextStyle(
                            color: AppColors.whiteTextColor,
                            fontWeight: FontWeight.bold),),
                      ),Expanded(
                        child: Text("SEPTEMBER",
                          textAlign: TextAlign.center,style: TextStyle(
                              color: AppColors.lightPrimary,
                              fontWeight: FontWeight.bold),),
                      ),Expanded(
                        child: Text("2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.lightPrimary,
                              fontWeight: FontWeight.bold),),
                      ),

                    ],
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        AppColors.greyColor,
                        Color(0xFF2A2A2A),
                        AppColors.greyColor,
                      ])

                  ),),
                /*SizedBox(height: 5.h,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                  width: 1.sw - 68.sp,
                  child: Row(
                    children: [
                      Container(
                        height: 17.h, width: 3.w,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              AppColors.lightPrimary, AppColors.darkPrimary
                            ])
                        ),),
                      SizedBox(width: 10.sp,),
                      Text("20 MAY 2025 - PRESENT", style: TextStyle(
                          fontSize: 8.sp,
                          color: AppColors.darkPrimary,
                          fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(

                  ),),*/
              ],)
          ],),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 28.sp,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 34.h,
                  child: DottedLine(
                    axis: Axis.vertical,
                    colors: [AppColors.greyColor],
                    dashGap: 3.sp, dashWidth: 1.5.sp,),
                ),
                Container(
                  height: 6.w, width: 6.w,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        AppColors.lightPrimary, AppColors.darkPrimary
                      ])
                  ),),
                SizedBox(
                  height: 65.h,
                  child: DottedLine(
                    axis: Axis.vertical,
                    colors: [AppColors.darkBackgroundColor],
                    dashGap: 3.sp, dashWidth: 1.5.sp,),
                ),

              ],
            ),
            SizedBox(width: 3.sp,),
            Column(
              children: [
                SizedBox(height: 12.h,),
                SizedBox(
                  height: 1.5.sp,
                  width: 4.sp,
                  child: DottedLine(
                    axis: Axis.horizontal,
                    colors: [AppColors.greyColor],
                    dashGap: 3.sp, dashWidth: 1.5.sp,),
                ),
              ],
            ),
            SizedBox(width: 3.sp,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.0.sp, vertical: 8.sp),
                  width: 1.sw - 68.sp,
                  child: Text("Ending Date", style: TextStyle(
                      color: AppColors.whiteTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      fontFamily:
                      GoogleFonts
                          .jost()
                          .fontFamily),),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.greyColor, // Specify the border color
                      width: 1.0.sp, // Specify the border width
                    ),

                  ),),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.0.sp, vertical: 8.sp),
                  width: 1.sw - 67.sp,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("DATE", style: TextStyle(
                            color: AppColors.whiteTextColor,
                            fontWeight: FontWeight.bold),),
                      ),Expanded(
                        child: Text("SEPTEMBER",
                          textAlign: TextAlign.center,style: TextStyle(
                            color: AppColors.lightPrimary,
                            fontWeight: FontWeight.bold),),
                        ),Expanded(
                          child: Text("2023",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.lightPrimary,
                              fontWeight: FontWeight.bold),),
                        ),

                    ],
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        AppColors.greyColor,
                        Color(0xFF2A2A2A),
                        AppColors.greyColor,
                      ])

                  ),),
                /*SizedBox(height: 5.h,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                  width: 1.sw - 68.sp,
                  child: Row(
                    children: [
                      Container(
                        height: 17.h, width: 3.w,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              AppColors.lightPrimary, AppColors.darkPrimary
                            ])
                        ),),
                      SizedBox(width: 10.sp,),
                      Text("20 MAY 2025 - PRESENT", style: TextStyle(
                          fontSize: 8.sp,
                          color: AppColors.darkPrimary,
                          fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(

                  ),),*/
              ],)
          ],),
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
