import 'package:dotted_line_flutter/dotted_line_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gamers_tag/components/red_button.dart';
import 'package:gamers_tag/utility/app_colors.dart';
import 'package:get/get.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

import '../get_controllers/edu_exp_get_controller.dart';

class EduExpScreen extends StatelessWidget {
  EduExpScreen({super.key});

  final EduExpGetController getController = Get.put(EduExpGetController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PixelPerfect(
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
      ),
    );
  }

  Widget mobileUi() {
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: Column(
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
                      child: RedButton(text: "ADD", onPressed: () {}),
                    )
                  ],),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget webUi() {
    return Container();
  }
}
