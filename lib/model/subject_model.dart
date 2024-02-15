import 'package:product_sale/model/quiz_model.dart';
import 'package:product_sale/model/level_model.dart';
class SubjectModel {
  final String subjectName;
  final List<QuizModel> questions;
  final LevelModel level;

  SubjectModel({
    required this.subjectName,
    required this.questions,
    required this.level
  });
  factory SubjectModel.fromJson(Map<String,dynamic>json){
    return SubjectModel(
        level: getLevelFromString(json["level"] as String? ?? "medium"),
        subjectName: json["subject_name"] as String? ?? "",
        questions:(json["questions"] as List?)
        ?.map((e) => QuizModel.fromJson(e))
        .toList() ??
        [],
    );
          }
}