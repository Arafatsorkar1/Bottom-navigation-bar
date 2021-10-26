import 'package:batch20/Second.dart';
import 'package:batch20/third_screen.dart';
import 'package:flutter/material.dart';

import 'first.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var page=[
    Second(),
    First(),
    ThirdScreen(),
  ];

  var _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purpleAccent,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
            title: Text('Contact'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.
              settings),
            title: Text('Settings'),

          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.
              share),
            title: Text('Share'),


          ),
        ],
        onTap: (index){
          _currentIndex=index;
          setState(() {

          });
        },
      ),
      body: page[_currentIndex],
    );
  }
}

