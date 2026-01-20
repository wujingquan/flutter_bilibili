import 'package:flutter/material.dart';
import 'DynamicsBodyWidget.dart';

class DynamicsAppBar extends StatefulWidget {
  @override
  _DynamicsAppBarState createState() => _DynamicsAppBarState();
}

class _DynamicsAppBarState extends State<DynamicsAppBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3, initialIndex: 1);
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  Widget _buildBody() {
    return Container(
      color: Colors.black12.withAlpha(5),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (BuildContext context, int position) {
          if (position == 0) {
            return Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              height: 55.0,
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  color: Colors.black12,
                ),
                height: 50.0,
                child: TextField(
                  controller: _searchController,
                  style: TextStyle(
                    decorationColor: Colors.black,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.black26,
                    prefixStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                    hintText: '查找精彩动态内容',
                    hintStyle: TextStyle(color: Colors.black26),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black26,
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Container(
              height: 900,
              width: 375,
              child: TabBarView(
                children: <Widget>[
                  DynamicsBodyWidget(),
                  DynamicsBodyWidget(),
                  DynamicsBodyWidget(),
                ],
                controller: _tabController,
              ),
            );
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var style = TextStyle(fontSize: 20.0);
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white54,
          tabs: <Widget>[
            Tab(icon: Text('视频', style: style)),
            Tab(icon: Text('综合', style: style)),
            Tab(icon: Text('热门', style: style)),
          ],
          controller: _tabController,
        ),
      ),
      body: _buildBody(),
    );
  }
}
