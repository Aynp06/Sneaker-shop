import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          backgroundColor: const Color.fromARGB(255, 100, 95, 95),
          child: Column(
            children: [
              DrawerHeader(
                  child: Image.asset(
                "assets/images/nike.png",
                height: 40,
                color: Colors.white,
              )),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Divider(
                  color: Color.fromARGB(255, 100, 95, 95),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                iconColor: Colors.white,
                title: Text("Home"),
                textColor: Colors.white,
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                iconColor: Colors.white,
                title: Text("Settings"),
                textColor: Colors.white,
              )
            ],
          )),
    );
  }
}
