import 'package:flutter/material.dart';
import 'package:product_list_ui/models/product.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class ProductService extends ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  Future<void> fetchProducts() async {
    try {
      String jsonString = await rootBundle.loadString('assets/data/products.json');
      final List<dynamic> jsonData = jsonDecode(jsonString);
      _products = jsonData.map((item) => Product.fromJson(item)).toList();
      notifyListeners();
    } catch (e) {
      print('Error fetching products: $e');
      _products = [];
      notifyListeners();
    }
  }
}