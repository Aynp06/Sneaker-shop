import 'package:flutter/material.dart';
import 'package:sneaker_shop/cart_page.dart';
import 'package:sneaker_shop/components/bottom_bar.dart';
import 'package:sneaker_shop/shop_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedindex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 229, 229),
      bottomNavigationBar: BottomBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedindex],
    );
  }
}
