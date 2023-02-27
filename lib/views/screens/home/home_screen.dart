import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../pages/pages.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List pages = [
    HomePage(),
    Container(
        child: Column(
      children: [
        SafeArea(
          child: Text("data"),
        )
      ],
    )),
    Container(),
    Container(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: pages.elementAt(4),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(
          color: Colors.grey,
        ),
        currentIndex: _currentIndex,
        selectedItemColor: Colors.teal,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.house_fill,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.rectangle_grid_2x2,
            ),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.cart_fill,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person_circle_fill,
            ),
            label: "Account",
          ),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
