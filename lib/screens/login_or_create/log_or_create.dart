import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_sale/screens/category/category_screen.dart';

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
            padding: EdgeInsets.fromLTRB(140.w, 72.h, 140.w, 0.h),
            child: Column(
              children: [
                Image.asset(AppImages.splash),
                Text(
                  "Quezzy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
          Image.asset(AppImages.persons),
          SizedBox(
            height: 200.h,
          ),

          Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Container(
                height:45.h,
                decoration: BoxDecoration(
                color: Color(0xFF000929),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const CategoryScreen();
                            },
                          ),
                        );
                      },
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFFFFFF),
                          fontSize:24.sp
                        ),
                      )))))
        ],
      ),
    );
  }
}
