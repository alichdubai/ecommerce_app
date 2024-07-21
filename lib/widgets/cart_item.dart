import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String productId;

  CartItem(this.productId);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text('Cart Item: $productId'),
        ],
      ),
    );
  }
}
