import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset('lib/images/Jordan-1-Low-Canyon-Rust.jpg'),
        title: Text('Nike'),
        subtitle: Text('\$' '250'),
        trailing: Icon(
          Icons.delete,
        ),
      ),
    );
  }
}
