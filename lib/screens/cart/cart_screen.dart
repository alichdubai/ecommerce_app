import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce_app/providers/cart_provider.dart';
import 'package:ecommerce_app/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final cartItems = cartProvider.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (ctx, i) => CartItem(
          productId: cartItems.keys.toList()[i],
          quantity: cartItems.values.toList()[i],
        ),
      ),
    );
  }
}
