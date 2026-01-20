import 'package:flutter/material.dart';

class MyBottomNaviBar extends StatefulWidget {
  final Function(int) onTap;
  final int currentIndex;
  MyBottomNaviBar({required this.onTap, required this.currentIndex});
  @override
  _MyBottomNaviBarState createState() => _MyBottomNaviBarState();
}

class _MyBottomNaviBarState extends State<MyBottomNaviBar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: '首页'),
        BottomNavigationBarItem(icon: Icon(Icons.music_video),label: '视频'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: '我的'),
      ],
      currentIndex: _currentIndex,
    );
  }
}
