import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GNav(
          color: Colors.grey,
          tabBackgroundColor: const Color.fromARGB(143, 255, 255, 255),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 25,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: ("Shop"),
            ),
            GButton(
              icon: Icons.shopping_basket,
              text: ("Cart"),
            )
          ]),
    );
  }
}
