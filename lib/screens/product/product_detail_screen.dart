import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String productId;

  ProductDetailScreen(this.productId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Text('Product Detail for $productId'),
      ),
    );
  }
}
