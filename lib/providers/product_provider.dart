import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void removeProduct(String productId) {
    _products.removeWhere((prod) => prod.id == productId);
    notifyListeners();
  }
}
