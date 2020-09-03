import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  final String url;
  final String description;
  final String type;
  final double likes;

  const ItemProduct({
    Key key,
    this.url,
    this.description,
    this.type,
    this.likes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Stack(
              children: [
                Image.asset(
                  url,
                  width: 125,
                ),
                Align(
                  alignment: Alignment(2, 0.5),
                  heightFactor: 3.8,
                  child: Container(
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/star.png',
                              width: 10,
                            ),
                          ),
                          Text(
                            likes.toString(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Container(
            
            child: Text(description,style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w400
            ),)
            ),
          Container(
            padding: EdgeInsets.all(1.5),
            child: Text(type,style: TextStyle(
              color: Colors.black26,
              fontSize: 14,
            )),
          ),
        ],
      ),
    );
  }
}
