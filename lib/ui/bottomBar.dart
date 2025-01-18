import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _CustomBottomBarExampleState createState() => _CustomBottomBarExampleState();
}

class _CustomBottomBarExampleState extends State<BottomBar> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    Center(child: Text('Home Page')),
    Center(child: Text('Search Page')),
    Center(child: Text('Profile Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Bottom Bar'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 60, // Height of the bottom bar
        color: Colors.blue, // Background color
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home,
                  color: _selectedIndex == 0 ? Colors.white : Colors.grey),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: Icon(Icons.search,
                  color: _selectedIndex == 1 ? Colors.white : Colors.grey),
              onPressed: () => _onItemTapped(1),
            ),
            IconButton(
              icon: Icon(Icons.person,
                  color: _selectedIndex == 2 ? Colors.white : Colors.grey),
              onPressed: () => _onItemTapped(2),
            ),
          ],
        ),
      ),
    );
  }
}
