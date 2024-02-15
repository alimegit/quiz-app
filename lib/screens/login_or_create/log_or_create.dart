import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';

class EnterScreen extends StatelessWidget {
  const EnterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_6A5AE0,
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.fromLTRB(140.w,72.h,140.w,0.h),
            child: Column(
              children: [
                Image.asset(AppImages.splash),
                Text("Quezzy",style: TextStyle(color: Colors.white,fontSize: 22.sp,fontWeight: FontWeight.w800),),
                SizedBox(height: 10.h,),
              ],
            ),

          ),
          Image.asset(AppImages.persons),
          SizedBox(height: 16.h,),
          Padding(padding: EdgeInsets.only(left: 16.w,right: 16.w),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                children: [
                  Center(
                    child: Text("Login or Sign up",style: TextStyle(color: AppColors.c_001833,fontSize: 24.sp,fontWeight: FontWeight.w700),
                  ),
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
