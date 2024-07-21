import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/auth/login_screen.dart';
import 'package:ecommerce_app/screens/auth/signup_screen.dart';
import 'package:ecommerce_app/screens/cart/cart_screen.dart';
import 'package:ecommerce_app/screens/product/product_list_screen.dart';
import 'package:ecommerce_app/screens/product/product_detail_screen.dart';
import 'package:ecommerce_app/screens/order/order_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/login': (ctx) => LoginScreen(),
        '/signup': (ctx) => SignupScreen(),
        '/cart': (ctx) => CartScreen(),
        '/products': (ctx) => ProductListScreen(),
        '/product-detail': (ctx) => ProductDetailScreen('dummy_product_id'),
        '/orders': (ctx) => OrderScreen(),
      },
    );
  }
}
