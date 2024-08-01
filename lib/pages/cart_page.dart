import 'package:flutter/material.dart';

import '../components/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          Text(
            'My Cart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return CartItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
