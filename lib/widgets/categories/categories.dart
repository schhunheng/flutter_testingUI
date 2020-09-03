import 'package:flutter/material.dart';

import 'category.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  var categories = [
    {
      "type":"Education",
      "url": "assets/hat.png",
      "amount": "4,285",
    },
    {
      "type":"Classic",
      "url": "assets/feather.png",
      "amount": "6,202",
    },
    {
      "type":"Adventur",
      "url": "assets/camping.png",
      "amount": "5,041",
    },
    {
      "type":"Thriller",
      "url": "assets/weapon.png",
      "amount": "12,105",
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: categories.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.2,
          ),
          itemBuilder: (BuildContext context, int index) {
          
            return (Category(
              urlCategories: categories[index]['url'],
              types: categories[index]['type'],
              amount_product:categories[index]['amount'],
            ));
          }),
    );
  }
}
