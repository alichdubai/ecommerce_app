import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/product.dart';

class CartProvider with ChangeNotifier {
  Map<String, int> _items = {};

  Map<String, int> get items => _items;

  void addItem(Product product) {
    if (_items.containsKey(product.id)) {
      _items[product.id] = _items[product.id]! + 1;
    } else {
      _items[product.id] = 1;
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void clearCart() {
    _items = {};
    notifyListeners();
  }
}
