import 'package:batch20/frist_screen.dart';
import 'package:batch20/second_screen.dart';
import 'package:batch20/third_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationDemo extends StatefulWidget {
  @override
  _BottomNavigationDemoState createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {
  var _currentIndex=0;
  final page=[
    FirstSrceen(),
    SecondScreen(),
    ThirdScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.orange,
      currentIndex: _currentIndex,
      items: [
      BottomNavigationBarItem(

          icon: Icon(Icons.settings),
          title: Text('Settings'),


      ),

      BottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text('Message'),

      ),

      BottomNavigationBarItem(
          icon: Icon(Icons.share),
          title: Text('Share'),

      ),
    ],
    onTap: (index){
        setState(() {
          _currentIndex=index;
        });
    },
    ),
      body: page[_currentIndex],
    );
  }
}
