import 'package:flutter/material.dart';

class DietModel{
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  Color boxColor;
  bool viewIsSelected;

  DietModel({
    required this.name, required this.iconPath,
    required this.level, required this.duration,
    required this.calorie, required this.boxColor,
    required this.viewIsSelected
  });


   static List <DietModel> getDiets(){
    List <DietModel> diets =[];
    diets.add(
      DietModel(name: 'Honey Pancake',
          iconPath: 'things/icons/honey-pancakes.svg',
          level: 'Easy',
          duration: '30mins',
          calorie: '1800 kcal',
          boxColor: const Color(0xff9DCEFF),
          viewIsSelected: true)
    );
    diets.add(
        DietModel(name: 'Canai Bread',
            iconPath: 'things/icons/canai-bread.svg',
            level: 'Hard',
            duration: '20mins',
            calorie: '230 kcal',
            boxColor: const Color(0xffEEA4CE),
            viewIsSelected: false)
    );
    diets.add(
    DietModel(name: 'Honey Pancake',
        iconPath: 'things/icons/honey-pancakes.svg',
        level: 'Easy',
        duration: '30mins',
        calorie: '1800 kcal',
        boxColor: const Color(0xff9DCEFF),
        viewIsSelected: true)
     );
     diets.add(
     DietModel(name: 'Canai Bread',
     iconPath: 'things/icons/canai-bread.svg',
     level: 'Hard',
     duration: '20mins',
     calorie: '230 kcal',
     boxColor: const Color(0xffEEA4CE),
     viewIsSelected: false)
     );

    return diets;

  }
}