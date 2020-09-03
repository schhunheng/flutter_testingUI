import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/providers/productsProvider.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  TextEditingController _seachProductByName = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductsProvider>(context);
    // bool statusColor = false;
    return Row(
      children: [
        Expanded(
          child: Container(
            child: TextField(
              controller: _seachProductByName,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Find the book",
                // icon: Icon(Icons.search,)
                 prefix:  Container(
                   
                   child: IconButton(
            icon: Icon(
              Icons.search,
              
            ),
            onPressed: () {
             if(_seachProductByName.text==""){
               productProvider.setSearchByName("zzz");
             }else{

              productProvider.setSearchByName(_seachProductByName.text);
             }
            }),
                 )
              ),
            ),
          ),
        ),
       
      ],
    );
  }
}
