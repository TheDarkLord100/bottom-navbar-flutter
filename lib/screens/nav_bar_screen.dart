import 'package:flutter/material.dart';

import 'profile_screen.dart';
import 'chat_screen.dart';
import 'home_screen.dart';
import 'hub_screen.dart';
import 'learn_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    LearnScreen(),
    HubScreen(),
    ChatScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            label: 'Hub',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/profile.png',),
            height: 28,),
            label: 'Profile',
          ),
        ],
        iconSize: 28,
        currentIndex: _selectedIndex,
        unselectedItemColor: const Color(0xFF6D747A),
        unselectedLabelStyle: const TextStyle(
          color: Color(0xFF6D747A),
        ),
        selectedItemColor: const Color(0xFF598BED),
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
