import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String urlCategories;
  final String types;
  final String amount_product;

  const Category({Key key, this.urlCategories, this.types, this.amount_product})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.black12),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(urlCategories,width: 40,height: 40,color: Colors.black45,),
          ),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(types,textAlign: TextAlign.start,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(amount_product.toString(),textAlign: TextAlign.left,style: TextStyle(color: Colors.grey),)),
                ],
              )),
        ],
      ),
    );
  }
}
