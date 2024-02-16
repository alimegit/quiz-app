import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_sale/model/subject_model.dart';
import 'package:product_sale/utils/colors/app_colors.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({
    Key? key,
    required this.color,
    required this.subjectModel,
    required this.time,
    required this.onTap,
  }) : super(key: key);
  final Color color;
  final String time;
  final VoidCallback onTap;
  final SubjectModel subjectModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 15.h,
        crossAxisSpacing: 15.w,
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                color: AppColors.c_001833,
                width: 2.w
              ),
            ),
            child: Column(
              children: [
                Image.asset(subjectModel.image,width: 40.h,height: 40.h,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
