// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

class ProductModel {
    ProductModel({
        this.name,
        this.url,
        this.likes,
        this.type,
    });

    String name;
    String url;
    double likes;
    String type;

    factory ProductModel.fromRawJson(String str) => ProductModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        name: json["name"],
        url: json["url"],
        likes: json["likes"].toDouble(),
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
        "likes": likes,
        "type": type,
    };
}
