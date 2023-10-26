class PopularDiets{
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;

  PopularDiets({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxIsSelected
});

  static List < PopularDiets > getPopularDiets(){

    List <PopularDiets> popularDiets =[];

    popularDiets.add(
      PopularDiets(name: 'Blueberry Pancake',
        iconPath: 'things/icons/blueberry-pancake.svg',
        level: 'Medium', duration: '30mins',
        calorie: '230Cal',
        boxIsSelected: true,));

    popularDiets.add(
        PopularDiets(name: 'Salmon Nigiri',
          iconPath: 'things/icons/salmon-nigiri.svg',
          level: 'Easy', duration: '20mins',
          calorie: '120Cal',
          boxIsSelected: false,));
    popularDiets.add(
        PopularDiets(name: 'Blueberry Pancake',
          iconPath: 'things/icons/blueberry-pancake.svg',
          level: 'Medium', duration: '30mins',
          calorie: '230Cal',
          boxIsSelected: true,));
    popularDiets.add(
        PopularDiets(name: 'Salmon Nigiri',
          iconPath: 'things/icons/salmon-nigiri.svg',
          level: 'Easy', duration: '20mins',
          calorie: '120Cal',
          boxIsSelected: false,));

    return popularDiets;
  }

}