import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';
import 'components/shoetile.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.grey[300],
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                ),
                Icon(
                  Icons.search,
                  color: Colors.black54,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "Everyone flies! But some flies longer than other!",
            style: TextStyle(color: Colors.grey[600], fontSize: 15),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 21, right: 21),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot picks!🔥",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
            child: ListView.builder(
                padding: EdgeInsets.only(top: 18, bottom: 18, right: 18),
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  Shoe shoe = Shoe(
                      name: "Air Jordan",
                      price: "240",
                      description: "cool shoe",
                      imagepath: "assets/images/xelooks.png");
                  return ShoeTile(
                    shoe: shoe,
                  );
                }))
      ],
    );
  }
}
