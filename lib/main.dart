import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/providers/productsProvider.dart';
import './pages/home.dart';
void main() {
  runApp(
    MultiProvider(
      providers:[
        ChangeNotifierProvider.value(value: ProductsProvider()),
      ],
      child:MaterialApp(
        home: Home(),
      )
    )
  );
}

