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
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(0, 246, 246, 246),
            elevation: 0,
            leading: Builder(
                builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu, color: Colors.black),
                    ))),
        drawer: Drawer(
            backgroundColor: const Color.fromARGB(255, 72, 68, 68),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Image.asset(
                        "assets/images/nike.png",
                        height: 40,
                        color: const Color.fromARGB(255, 244, 241, 241),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Divider(
                        color: Color.fromARGB(255, 72, 68, 68),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: ListTile(
                        leading: Icon(Icons.home),
                        iconColor: Colors.white,
                        title: Text("Home"),
                        textColor: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: ListTile(
                        leading: Icon(Icons.settings),
                        iconColor: Colors.white,
                        title: Text("Settings"),
                        textColor: Colors.white,
                      ),
                    ),
                  ]),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: ListTile(
                      leading: Icon(Icons.logout),
                      iconColor: Colors.white,
                      title: Text("Log out"),
                      textColor: Colors.white,
                    ),
                  ),
                ])));
  }
}
