import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/user.dart';

class AuthProvider with ChangeNotifier {
  User? _user;

  User? get user => _user;

  Future<void> login(String email, String password) async {
    // Add login logic here
    _user = User(id: '123', email: email);
    notifyListeners();
  }

  Future<void> signup(String email, String password) async {
    // Add signup logic here
    _user = User(id: '123', email: email);
    notifyListeners();
  }

  Future<void> logout() async {
    _user = null;
    notifyListeners();
  }
}
