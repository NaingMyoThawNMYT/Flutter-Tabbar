import 'package:flutter/material.dart';

class DefaultTabbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Default Tabbar Page'),
      ),
      body: Center(
        child: Text('Default Tabbar'),
      ),
    );
  }
}
