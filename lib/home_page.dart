import 'package:flutter/material.dart';
import 'package:instagram/pages/account.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/reals.dart';
import 'package:instagram/pages/search.dart';
import 'package:instagram/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> pages =  [
    Home(),
    const Search(),
    const Real(),
    const Shop(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'HomePage'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reals'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'accounts'),
      ],),
    );
  }
}