import 'package:flutter/material.dart';

class DefaultTextTabbarWithTabControllerPage extends StatefulWidget {
  @override
  _DefaultTextTabbarWithTabControllerPageState createState() =>
      _DefaultTextTabbarWithTabControllerPageState();
}

class _DefaultTextTabbarWithTabControllerPageState
    extends State<DefaultTextTabbarWithTabControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 3,
      vsync: this,
    )..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Text(
                '${_tabController.index}',
                style: Theme.of(context).textTheme.headline5,
              ),
              TabBar(
                controller: _tabController,
                labelColor: Theme.of(context).primaryColor,
                tabs: <Widget>[
                  Tab(text: 'Car'),
                  Tab(text: 'Transit'),
                  Tab(text: 'Bike'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
