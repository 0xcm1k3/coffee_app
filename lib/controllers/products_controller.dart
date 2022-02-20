import 'dart:convert';

import 'package:coffee_app/models/product.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;

class ProductController extends GetxController {
  final List<Product> _productsList = [];
  get products => _productsList;

  Future<void> init() async {
    String x = await rootBundle.loadString("assets/products.json");
    var jsonData = jsonDecode(x);
    for (Map<String, dynamic> product in jsonData) {
      _productsList.add(Product.fromMap(product));
    }
    update();
  }
}
