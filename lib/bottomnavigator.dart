import 'package:fitness/homepage.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  List _pages = [
    MyHomePage(),
    Center(
        child: Text('Learn',
            style: TextStyle(fontSize: 30, color: Colors.deepPurple))),
    Center(
        child: Text('Chat',
            style: TextStyle(fontSize: 30, color: Colors.deepPurple))),
    Center(
        child: Text('Hub',
            style: TextStyle(fontSize: 30, color: Colors.deepPurple))),
    Center(
        child: Text('Profile',
            style: TextStyle(fontSize: 30, color: Colors.deepPurple))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: Colors.deepPurple, size: 30),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/image/Icon.png'),
            ),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/image/6.png'),
            ),
            label: 'Hub',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/image/5.png'),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/image/profile.png'),
              width: 20,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
