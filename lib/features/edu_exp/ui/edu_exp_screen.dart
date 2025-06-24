import 'package:dotted_line_flutter/dotted_line_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gamers_tag/components/red_button.dart';
import 'package:gamers_tag/utility/app_colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

import '../get_controllers/edu_exp_get_controller.dart';
import 'experience_screen.dart';

class EduExpScreen extends StatelessWidget {
  EduExpScreen({super.key});

  final EduExpGetController getController = Get.put(EduExpGetController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: kDebugMode? PixelPerfect(
        assetPath: 'assets/images/img.png',
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
      ): Scaffold(
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
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: ListView(
        children: [
          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("EDU EXP", style: TextStyle(color: AppColors.whiteTextColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold
              )),
            ],
          ),
          SizedBox(height: 11.h,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.greyColor, // Choose your desired border color
                width: 1.0, // Choose your desired border width
              ),
              borderRadius: BorderRadius.circular(
                  4.0), // Optional: for rounded corners
            ),
            child: SizedBox(
              height: 30.h, // Adjust the height as needed

              child: TextFormField(decoration: InputDecoration(
                  border: InputBorder.none,
                  // Removes the default border of TextFormField
                  contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                  // Adjust vertical padding
                  hint: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.sp),
                    child: Text("Search for Education or Experience",
                      style: TextStyle(
                          fontSize: 12.sp, color: AppColors.greyColor),),
                  )
              ),),
            ),
          ),
          SizedBox(height: 22.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 27.h, width: 6.w,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              AppColors.lightPrimary, AppColors.darkPrimary
                            ])
                        ),),
                        SizedBox(
                          height: 18.h,
                          child: DottedLine(
                            axis: Axis.vertical,
                            colors: [AppColors.greyColor],
                            dashGap: 3.sp, dashWidth: 1.5.sp,),
                        )
                      ],
                    ),
                    SizedBox(width: 10.sp,),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0.sp),
                      child: Text("EXPERIENCE", style: TextStyle(
                          color: AppColors.whiteTextColor, fontSize: 15.sp),),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0.sp,),
                      child: RedButton(text: "ADD", onPressed: () {
                        Get.to(() => ExperienceScreen());
                      }),
                    )
                  ],),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
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
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                      width: 1.sw - 68.sp,
                      child: Text("COMPANY NAME", style: TextStyle(
                          color: AppColors.darkPrimary,
                          fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.greyColor, // Specify the border color
                        width: 1.0.sp, // Specify the border width
                      ),

                    ),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                      width: 1.sw - 67.sp,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("Product Manager Intern", style: TextStyle(
                                color: AppColors.whiteTextColor,
                                fontFamily: GoogleFonts.jost().fontFamily,
                                fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            padding: EdgeInsets.all(4.sp), // Increased padding
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(colors: [Color(0xFF0C1113), Color(0xFF42555A),Color(0xFF050809),]),
                            ),
                            child: Icon(Icons.edit, color: AppColors.whiteTextColor, size: 12.sp,), // Increased icon size
                          )
                        ],
                      ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        AppColors.greyColor,
                        Color(0xFF2A2A2A),
                        AppColors.greyColor,])

                    ),),
                    SizedBox(height: 5.h,),
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

                      ),),
                  ],)
              ],),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
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
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                      width: 1.sw - 68.sp,
                      child: Text("COMPANY NAME", style: TextStyle(
                          color: AppColors.darkPrimary,
                          fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.greyColor, // Specify the border color
                        width: 1.0.sp, // Specify the border width
                      ),

                    ),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                      width: 1.sw - 67.sp,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("Product Manager Intern", style: TextStyle(
                                color: AppColors.whiteTextColor,
                                fontFamily: GoogleFonts.jost().fontFamily,
                                fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            padding: EdgeInsets.all(4.sp), // Increased padding
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(colors: [AppColors.greyColor, Color(0xFF42555A), AppColors.greyColor]),
                            ),
                            child: Icon(Icons.edit, color: AppColors.whiteTextColor, size: 12.sp,), // Increased icon size
                          )
                        ],
                      ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        AppColors.greyColor,
                        Color(0xFF2A2A2A),
                        AppColors.greyColor,])

                    ),),
                    SizedBox(height: 5.h,),
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

                      ),),
                  ],)
              ],),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
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
                    /*SizedBox(
                      height: 65.h,
                      child: DottedLine(
                        axis: Axis.vertical,
                        colors: [AppColors.greyColor],
                        dashGap: 3.sp, dashWidth: 1.5.sp,),
                    ),*/

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
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                      width: 1.sw - 68.sp,
                      child: Text("COMPANY NAME", style: TextStyle(
                          color: AppColors.darkPrimary,
                          fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.greyColor, // Specify the border color
                        width: 1.0.sp, // Specify the border width
                      ),

                    ),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                      width: 1.sw - 67.sp,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("Product Manager Intern", style: TextStyle(
                                color: AppColors.whiteTextColor,
                                fontFamily: GoogleFonts.jost().fontFamily,
                                fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            padding: EdgeInsets.all(4.sp), // Increased padding
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(colors: [AppColors.greyColor, Color(0xFF42555A), AppColors.greyColor]),
                            ),
                            child: Icon(Icons.edit, color: AppColors.whiteTextColor, size: 12.sp,), // Increased icon size
                          )
                        ],
                      ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        AppColors.greyColor,
                        Color(0xFF2A2A2A),
                        AppColors.greyColor,])

                    ),),
                    SizedBox(height: 5.h,),
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

                      ),),
                  ],)
              ],),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 27.h, width: 6.w,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                AppColors.lightPrimary, AppColors.darkPrimary
                              ])
                          ),),
                        SizedBox(
                          height: 18.h,
                          child: DottedLine(
                            axis: Axis.vertical,
                            colors: [AppColors.greyColor],
                            dashGap: 3.sp, dashWidth: 1.5.sp,),
                        )
                      ],
                    ),
                    SizedBox(width: 10.sp,),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0.sp),
                      child: Text("EDUCATION", style: TextStyle(
                          color: AppColors.whiteTextColor, fontSize: 15.sp),),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0.sp,),
                      child: RedButton(text: "ADD", onPressed: () {}),
                    )
                  ],),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
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
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                      width: 1.sw - 68.sp,
                      child: Text("COMPANY NAME", style: TextStyle(
                          color: AppColors.darkPrimary,
                          fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.greyColor, // Specify the border color
                          width: 1.0.sp, // Specify the border width
                        ),

                      ),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                      width: 1.sw - 67.sp,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("Product Manager Intern", style: TextStyle(
                                color: AppColors.whiteTextColor,
                                fontFamily: GoogleFonts.jost().fontFamily,
                                fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            padding: EdgeInsets.all(4.sp), // Increased padding
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(colors: [AppColors.greyColor, Color(0xFF42555A), AppColors.greyColor]),
                            ),
                            child: Icon(Icons.edit, color: AppColors.whiteTextColor, size: 12.sp,), // Increased icon size
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            AppColors.greyColor,
                            Color(0xFF2A2A2A),
                            AppColors.greyColor,])

                      ),),
                    SizedBox(height: 5.h,),
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

                      ),),
                  ],)
              ],),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
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
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                      width: 1.sw - 68.sp,
                      child: Text("COMPANY NAME", style: TextStyle(
                          color: AppColors.darkPrimary,
                          fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.greyColor, // Specify the border color
                          width: 1.0.sp, // Specify the border width
                        ),

                      ),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                      width: 1.sw - 67.sp,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("Product Manager Intern", style: TextStyle(
                                color: AppColors.whiteTextColor,
                                fontFamily: GoogleFonts.jost().fontFamily,
                                fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            padding: EdgeInsets.all(4.sp), // Increased padding
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(colors: [AppColors.greyColor, Color(0xFF42555A), AppColors.greyColor]),
                            ),
                            child: Icon(Icons.edit, color: AppColors.whiteTextColor, size: 12.sp,), // Increased icon size
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            AppColors.greyColor,
                            Color(0xFF2A2A2A),
                            AppColors.greyColor,])

                      ),),
                    SizedBox(height: 5.h,),
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

                      ),),
                  ],)
              ],),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
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
                    /*SizedBox(
                      height: 65.h,
                      child: DottedLine(
                        axis: Axis.vertical,
                        colors: [AppColors.greyColor],
                        dashGap: 3.sp, dashWidth: 1.5.sp,),
                    ),*/

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
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                      width: 1.sw - 68.sp,
                      child: Text("COMPANY NAME", style: TextStyle(
                          color: AppColors.darkPrimary,
                          fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.greyColor, // Specify the border color
                          width: 1.0.sp, // Specify the border width
                        ),

                      ),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 4.sp),
                      width: 1.sw - 67.sp,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("Product Manager Intern", style: TextStyle(
                                color: AppColors.whiteTextColor,
                                fontFamily: GoogleFonts.jost().fontFamily,
                                fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            padding: EdgeInsets.all(4.sp), // Increased padding
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(colors: [AppColors.greyColor, Color(0xFF42555A), AppColors.greyColor]),
                            ),
                            child: Icon(Icons.edit, color: AppColors.whiteTextColor, size: 12.sp,), // Increased icon size
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            AppColors.greyColor,
                            Color(0xFF2A2A2A),
                            AppColors.greyColor,])

                      ),),
                    SizedBox(height: 5.h,),
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

                      ),),
                  ],)
              ],),
          ),
        ],
      ),
    );
  }

  Widget webUi() {
    return Container();
  }
}
