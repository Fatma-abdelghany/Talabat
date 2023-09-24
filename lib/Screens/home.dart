import 'package:flutter/material.dart';
import 'package:navigation_bar/Screens/profile.dart';
import 'package:navigation_bar/Screens/products.dart';
import 'package:navigation_bar/Screens/shoping_cart.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> _pages = <Widget>[
    ProductList(),
    ShoppingCart(),
    Profile()
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        
      ),
    );
  }
}

