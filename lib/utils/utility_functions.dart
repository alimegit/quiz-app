import '../model/Level_model.dart';

LevelModel getLevelFromString(String level){
  switch (level){
    case "easy":{
      return LevelModel.easy;

    }
    case "hard":{
      return LevelModel.hard;

    }
    default:{
      return LevelModel.medium;
    }

  }
}