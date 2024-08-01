import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:btl2/components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'everyone files.. some fly longer than orthers',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     children: const [
        //       Text(
        //         'Hot pick',
        //         style: TextStyle(
        //           fontWeight: FontWeight.bold,
        //           fontSize: 24,
        //         ),
        //       ),
        //       Text(
        //         'See all',
        //         style: TextStyle(
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot pick 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        Expanded(
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ShoeTile();
              }),
        ),
        // const SizedBox(
        //   height: 10,
        // ),
        // Expanded(
        //   // padding: const EdgeInsets.all(12.0),
        //   child: GridView.builder(
        //     itemCount: 6,
        //     gridDelegate:
        //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //     itemBuilder: (context, index) {
        //       return ShoeTile();
        //     },
        //   ),
        // ),
      ],
    );
  }
}
