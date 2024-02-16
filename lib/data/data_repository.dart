import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:product_sale/utils/images/app_images.dart';

import '../model/subject_model.dart';

class DataRepository {

  DataRepository._();
  static final DataRepository instance =  DataRepository._();
  factory DataRepository()=>instance;
  List<SubjectModel> allSubjects= [];

  Future<void> loadSubjects() async {
    var data  = await  rootBundle.loadString(AppImages.data);
    var decodedData = jsonDecode(data);
    List<SubjectModel> subjects = [];
   allSubjects =  (decodedData["data"] as List?)
            ?.map((e) => SubjectModel.fromJson(e))
            .toList() ??
        [];

  }
}
