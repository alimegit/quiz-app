import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:product_sale/utils/styles/app_text_style.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../login_or_create/log_or_create.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 30),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EnterScreen();
            },
          ),
        );
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.c_6A5AE0,
        body: Stack(
          children: [
            Positioned(
              top: 100.h,
                child: SvgPicture.asset(AppImages.oval,)),
            Padding(
              padding:  EdgeInsets.fromLTRB(0.w,0.h,0.w,0.w),
              child: Center(
                child: Column(
                  children: [
                    Lottie.asset(AppImages.splashjson,),
                     Text("Quezzy",style: TextStyle(color: Colors.white,fontSize: 36.sp,fontWeight: FontWeight.w800),)
                  ],
                ),

              ),
            ),
          ],
        ));
  }
}
