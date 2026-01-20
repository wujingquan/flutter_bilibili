import 'package:flutter/material.dart';

class PersonAppBar extends StatefulWidget {
  @override
  _PersonAppBarState createState() => _PersonAppBarState();
}

class _PersonAppBarState extends State<PersonAppBar> with SingleTickerProviderStateMixin {
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
    return Center(
      child: Text('个人中心'),
    );
  }
}
