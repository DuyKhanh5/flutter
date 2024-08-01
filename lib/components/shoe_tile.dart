import 'package:flutter/material.dart';
// import 'package:flutter_application_1/model/product_model.dart';

class ShoeTile extends StatelessWidget {
  const ShoeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset('lib/images/Jordan-1-Low-Canyon-Rust.jpg'),
          ),
          Text(
            'Nike ',
            style: TextStyle(color: Colors.grey[600]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            // padding: EdgeInsets.only(left: 65.0, bottom: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      'Nike',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '\$' '240',
                      style: TextStyle(
                        color: Color.fromRGBO(158, 158, 158, 1),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // child: FutureBuilder(
      //     builder: (BuildContext context, AsyncSnapshot snapshot) {
      //   if (snapshot.hasData) {
      //     List<Product> products = snapshot.data;
      //     return ListView.builder(
      //         itemCount: products.length,
      //         itemBuilder: (context, index) {
      //           return ListTile();
      //         });
      //   }
      // }),

      // ),
    );
  }
}
