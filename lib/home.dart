import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/models/popular_model.dart';

import 'models/category_model.dart';
import 'models/diet_model.dart';

class HomePage extends StatelessWidget {
   HomePage ({super.key});


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: appBar(),
      body: Column(

        children: [
          searchField(),
          const SizedBox(height: 10),
          categoryBar(),
          const SizedBox(height: 15),
          recommendation(),
          const SizedBox(height: 10),
          popular(),
        ],
      ),
    );

  }
}
AppBar appBar(){
  return AppBar(
    title: const Text("Breakfast",
      style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
          letterSpacing: 7.0
      ),
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 0,
    leading: GestureDetector(onTap: (){},
      child: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,


        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset('things/icons/Arrow - Left 2.svg',
          width: 20,height: 20,),

      ),
    ),
    actions: [
      GestureDetector(onTap: ()
      {            },
        child:Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 37,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset('things/icons/dots.svg',
            width: 5,
            height: 5,),
        ),
      )
    ],
  );
}
Container searchField(){
  return  Container(
    margin: const EdgeInsets.only(top:10,left: 20,right: 20),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
        color: Colors.black.withOpacity(0.11),
         blurRadius: 40,
          spreadRadius: 0.0
        )
        ]
    ),
    child:  TextField(
      decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.all(15),
      hintText: "Search Eggs and Pancakes",
      hintStyle: const TextStyle(
      color: Colors.grey,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.normal,
      fontSize: 14,
      ),
      prefixIcon: Padding(
      padding: const EdgeInsets.all(15),
      child: SvgPicture.asset('things/icons/Search.svg'),
      ),
      suffixIcon: Padding(
        padding: const EdgeInsets.all(15),
        child: SvgPicture.asset('things/icons/Filter.svg'),
      ),
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: BorderSide.none,
    )
    ) ,
    ),
    );
}
Column categoryBar(){

  List <CategoryModel> categories =[];

  void getCategories(){
    categories = CategoryModel.getCategories();
  }
  getCategories();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Text('Category',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
              fontFamily: 'Poppins'
          ),
        ),
      ),
      const SizedBox(height: 15),
      Container(
        height: 150,
        child: ListView.separated(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20, right: 20),
          separatorBuilder: (context, index)=> const SizedBox(width: 30),
          itemBuilder: (context, index){

            return Container(
              width: 100,
              decoration: BoxDecoration(
                  color: categories[index].boxColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(categories[index].iconPath ),
                    ),
                  ),
                  Text(categories[index].name,
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    ],
  );
}
Column recommendation(){

  List <DietModel> diets =[];

  void getDiets(){
    diets = DietModel.getDiets();
  }
  getDiets();
  return  Column(

  crossAxisAlignment: CrossAxisAlignment.start,

    children:[
    const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Text("Diet Recommendations",
      style: TextStyle(

          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins'
      ),),
    ),
      const SizedBox(height: 15),
      Container(
        height: 190,
        child: ListView.separated(
          itemCount: diets.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20, right: 20),
          separatorBuilder: (context, index)=> const SizedBox(width: 30),
          itemBuilder: (context, index){
            return Container(
              width: 150,
              decoration: BoxDecoration(
                color: diets[index].boxColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                      SvgPicture.asset(diets[index].iconPath),

                  Text(diets[index].name,
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  ),

                  Text('${diets[index].level} | ${diets[index].duration} | ${diets[index].calorie}',
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 11,
                    color: Color( 0x8A000000),

                  ),
                  ),
                  Container(
                    height: 30,
                    width: 110,
                    decoration:  BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff9dceff),
                          Color(0xff92a3fd)
                        ]
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(

                      child: Text("View",
                      style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                        color: Colors.white,
                    ),
                      ),),
                  )

                ],
              ),
              
            );
          },
        ),
      )
  ]
  );
}
Column popular(){
  List <PopularDiets> popularDiets =[];

  void getDiets(){
    popularDiets = PopularDiets.getPopularDiets();
  }
  getDiets();
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text('Popular',
        style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins'
        ),
        ),
      ),

      Container(
      height: 150,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: popularDiets.length,
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index)=> const SizedBox(height: 10),
          padding: const EdgeInsets.only(
              top: 10,
              bottom: 20,
              left:10,
            right: 10
          ),
          itemBuilder: (context, index){
            return Container(
              height: 60,

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(padding: const EdgeInsets.all(5),
                  child: SvgPicture.asset(popularDiets[index].iconPath,
                    height: 45,
                    width: 45,
                  ),
                    ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(popularDiets[index].name,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      Text('${popularDiets[index].level} | ${popularDiets[index].duration} | ${popularDiets[index].calorie}',
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 11,
                          color: Color( 0x8A000000),
                        ),
                      )
                    ],
                  ),
                  SvgPicture.asset('things/icons/button.svg', height: 25,)
                ],
              ),
            );
          },),
      ),

    ],
  );
}