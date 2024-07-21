import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(product.imageUrl),
          Text(product.title),
        ],
      ),
    );
  }
}
