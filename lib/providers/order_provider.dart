import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/product.dart';

class OrderProvider with ChangeNotifier {
  List<Map<String, dynamic>> _orders = [];

  List<Map<String, dynamic>> get orders => _orders;

  void addOrder(List<Product> products, double total) {
    _orders.add({
      'id': DateTime.now().toString(),
      'products': products,
      'total': total,
      'date': DateTime.now(),
    });
    notifyListeners();
  }
}
