import 'package:flutter/cupertino.dart';
import 'package:testing/models/productModel.dart';

class ProductsProvider with ChangeNotifier {
  List<ProductModel> _items;
  List<ProductModel> _listSearch;

  void search(String str) {
    _listSearch = _items
        .where(
            (e) => e.name.toString().toLowerCase().contains(str.toLowerCase()))
        .toList();
    notifyListeners();
  }

  get getListSearch => _listSearch;
  get getItems => _items;
  setItems(items) {
    _items = items;
    notifyListeners();
  }

   setItemsIntoSearch() {
    if (_listSearch != null) {
      _items= _listSearch;
    } 
  }
}
