import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/models/productModel.dart';
import 'package:testing/providers/productsProvider.dart';
import 'package:testing/widgets/products/product.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var _item = [
    {
      "name": "Monkey Grip",
      "url": "assets/book.png",
      "likes": 4.8,
      "type": "Classic"
    },
    {
      "name": "Sexograpies",
      "url": "assets/book1.png",
      "likes": 4.1,
      "type": "Other"
    },
    {
      "name": "Heng",
      "url": "assets/profile0.png",
      "likes": 4.8,
      "type": "Classic"
    },
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductsProvider>(context);
    List<ProductModel> _items =
        _item.map((e) => ProductModel.fromJson(e)).toList();
    productProvider.setItems(_items);
    //  productProvider.search("m");
    List<ProductModel> products = productProvider.getItems;
    List<ProductModel> listSearch = productProvider.getListSearch;
   

    return Container(
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: productProvider.getListSearch != null
              ? (listSearch.length)
              : products.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (BuildContext context, int index) {
            if (productProvider.getListSearch != null) {
              return (ItemProduct(
                url: listSearch[index].url,
                description: listSearch[index].name,
                type: listSearch[index].type,
                likes: listSearch[index].likes,
              ));
            } else {
              return (ItemProduct(
                url: products[index].url,
                description: products[index].name,
                type: products[index].type,
                likes: products[index].likes,
              ));
            }
          }),
    );
  }
}
