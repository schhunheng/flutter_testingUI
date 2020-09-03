import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/providers/productsProvider.dart';
import 'package:testing/widgets/products/product.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductsProvider>(context);
    
    bool status = true;
    var products = productProvider.getItems;
    int items = 0;
    int ind;
    for (int i = 0; i < products.length; i++) {
      if (products[i]['name'].contains(productProvider.getSearchByName)) {
        ind = i;
        items = items + 1;
      }
    }
  
    return Container(
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: items == 0 ? products.length : items,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (BuildContext context, int index) {
           
            if (items == 0) {
              return (ItemProduct(
                url: products[index]['url'],
                description: products[index]['name'],
                type: products[index]['type'],
                likes: products[index]['likes'],
              ));
            } else {
              return (ItemProduct(
                url: products[ind]['url'],
                description: products[ind]['name'],
                type: products[ind]['type'],
                likes: products[ind]['likes'],
              ));
            }
          }),
    );
  }
}
