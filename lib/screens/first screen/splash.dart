import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.c_6A5AE0,
        body: Stack(
          children: [
            Positioned(
              top: 100.h,
                child: SvgPicture.asset(AppImages.oval)),
            Center(
              child: Image.asset(AppImages.splash),
            ),
          ],
        ));
  }
}
