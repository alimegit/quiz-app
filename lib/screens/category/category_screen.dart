import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_sale/model/subject_model.dart';
import 'package:product_sale/screens/category/widgets/subject_item.dart';

import '../../data/data_repository.dart';
import '../../utils/colors/app_colors.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late List<SubjectModel> data;

  @override
  void initState() {
    data = DataRepository.instance.allSubjects;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_6A5AE0,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.c_6A5AE0,
        elevation: 0,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_backspace)),
        title: Text(
          "Category",
          style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w700,
              fontSize: 24.sp),
        ),
      ),
      body: Column(
        children: [
          ...List.generate(
            data.length,
            (index) => Text(data[index].subjectName),
          ),
        ],
      ),
    );
  }
}
