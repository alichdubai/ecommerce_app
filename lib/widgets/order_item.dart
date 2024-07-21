import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final String order;

  OrderItem(this.order);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text('Order: $order'),
        ],
      ),
    );
  }
}
