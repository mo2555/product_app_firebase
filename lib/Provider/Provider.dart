import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider_with_model/Model/Product.dart';

class MyProvider with ChangeNotifier {
  List<Product> productsList = [];

  void add(
      {String id,
        String title,
        String description,
        double price,
        String imageUrl}) {
    productsList.add(Product(
      id: id,
      title: title,
      description: description,
      price: price,
      imageUrl: imageUrl,
    ));

    print(imageUrl);

    notifyListeners();
  }

  void delete(String id) {
    productsList.removeWhere((element) => element.id == id);
    notifyListeners();
    print("Item Deleted");
  }
}