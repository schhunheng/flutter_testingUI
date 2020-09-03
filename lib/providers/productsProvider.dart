import 'package:flutter/cupertino.dart';

class ProductsProvider with ChangeNotifier {
  var _searchByName;
  var _items = [
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
  ];
  get getItems => _items;
   setItems(items) {
    _items = items;
    notifyListeners();
  }

  get getSearchByName => _searchByName;
   setSearchByName(name) {
    _searchByName = name;
    notifyListeners();
  }
}
