import 'package:flutter/material.dart';

import 'utils/bubble_tabbar.dart';

class BubbleTabbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Bubble Tabbar Page',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.0,
          bottom: BubbleTabbar(
            tabBar: TabBar(
              unselectedLabelColor: Colors.white,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.blue,
              ),
              tabs: <Widget>[
                Tab(text: 'Car'),
                Tab(text: 'Transit'),
                Tab(text: 'Bike'),
              ],
            ),
            color: Colors.blue[200],
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
