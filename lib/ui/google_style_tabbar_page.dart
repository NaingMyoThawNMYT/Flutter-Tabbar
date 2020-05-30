import 'package:flutter/material.dart';

import 'google_style_tabbar_indicator.dart';

class GoogleStyleTabbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Google Style Tabbar Page',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 1.0,
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            indicator: GoogleStyleIndicator(
              indicatorSize: GoogleStyleIndicatorSize.normal,
              indicatorHeight: 4.0,
              indicatorColor: Colors.blue,
            ),
            tabs: <Widget>[
              Tab(text: 'Car'),
              Tab(text: 'Transit'),
              Tab(text: 'Bike'),
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
