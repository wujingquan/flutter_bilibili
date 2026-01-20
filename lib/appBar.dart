import 'package:flutter/material.dart';

class AppNaviBar extends StatefulWidget {
  @override
  _AppNaviBarState createState() => _AppNaviBarState();
}

class _AppNaviBarState extends State<AppNaviBar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          child: Image.network(
            'https://i0.hdslb.com/bfs/bangumi/8d9f5b4a566d0547bc2e3f6f733b732a09c0d3d4.jpg@80w_80h.jpg',
            width: 40,
            height: 40,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => Icon(Icons.person, color: Colors.white70, size: 40),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Container(
                height: 40.0,
                color: Colors.white30,
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search, color: Colors.white30, size: 24),
                    Expanded(
                      child: TextField(
                        style: TextStyle(decorationColor: Colors.red, color: Colors.white),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          fillColor: Colors.white30,
                          border: InputBorder.none,
                          prefixStyle: TextStyle(color: Colors.white),
                          contentPadding: EdgeInsets.only(top: 8.0),
                          hintStyle: TextStyle(color: Colors.white),
                          isDense: true,
                        ),
                        autofocus: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.share, color: Colors.white70, size: 22),
              onPressed: () {},
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(minWidth: 36, minHeight: 36),
            ),
            IconButton(
              icon: Icon(Icons.settings, color: Colors.white70, size: 22),
              onPressed: () {},
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(minWidth: 36, minHeight: 36),
            ),
          ],
        ),
      ],
    );
  }
}
