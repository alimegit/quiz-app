import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors/app_colors.dart';
class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_6A5AE0,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.c_6A5AE0,
            elevation: 0,
            leading: IconButton(onPressed: (){}, icon:Icon(Icons.keyboard_backspace) ),
            title: Text("Category",style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w700,fontSize: 24.sp),),
          ),
      body: Column(
        children: [
        ],
      ),
    );
  }
}
