import 'package:flutter/material.dart';

class DefaultTextTabbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Default Text Tabbar Page'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Car"),
              Tab(text: "Transit"),
              Tab(text: "Bike"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
