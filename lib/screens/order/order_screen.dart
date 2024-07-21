import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce_app/providers/order_provider.dart';
import 'package:ecommerce_app/widgets/order_item.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);
    final orders = orderProvider.orders;

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (ctx, i) => OrderItem(
          order: orders[i],
        ),
      ),
    );
  }
}
