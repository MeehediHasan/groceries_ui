import 'package:flutter/material.dart';
import 'package:groceries/ui/home_screen.dart';

import 'cart_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  // List of screens
  final List<Widget> listOfScreen = [
    const HomeScreen(),
    const HomeScreen(),
    const CartScreen(),  // Cart Screen at index 2
    const HomeScreen(),
  ];

  // To track the currently selected index
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        // This shows which tab is active
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.blue,
        // Set the background color here
        selectedItemColor: Colors.green,
        // Set the color for selected items
        unselectedItemColor: Colors.black,

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_search), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded), label: 'Account'),
        ],
      ),
      body: listOfScreen[currentIndex],
    );
  }
}
