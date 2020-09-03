

import 'package:flutter/material.dart';
import 'package:testing/widgets/categories/categories.dart';
import 'package:testing/widgets/categories/category.dart';
import 'package:testing/widgets/products/product.dart';
import 'package:testing/widgets/products/products.dart';
import 'package:testing/widgets/search/searchBar.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<List<ItemProduct>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return ItemProduct();
    });
  }

  @override
  Widget bottomNavBar(IconData icon,Color color) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 60,
        color: Color(0xFF1b3057),
        child: InkWell(
          onTap: () => {},
          child: IconButton(
              icon: Icon(
                icon,
                color: color,
                size: 30,
              ),
              onPressed: null),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
            backgroundColor: Colors.white,
            actions:<Widget> [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: CircleAvatar(
                
                   child: Image.asset('assets/profile0.png',width: 40,),
              ),
               )
            ],
            title: ListTile(
              leading: Text(
                "Explore",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
             
            )),
        body: SafeArea(
          child: ListView(
            children: [
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:SearchBox(),
                ),
              Divider(),
              ListView(
                scrollDirection: Axis.vertical,
                // scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Container(
                      child: ListTile(
                    title: Text(
                      "Popular now",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  )),
                  // List of Popular Product
                  Products(),
                  // List of Categories

                  Container(
                    margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                  Categories(),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          children: <Widget>[
            bottomNavBar(Icons.home,Colors.white),
            bottomNavBar(Icons.bookmark,Colors.white60),
            bottomNavBar(Icons.check_box,Colors.white60),
            bottomNavBar(Icons.bookmark,Colors.white60),
          ],
        ));
  }
}
