import 'package:flutter/material.dart';
import 'package:fluttertabbar/ui/default_tabbar_page.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ButtonTheme(
              minWidth: double.infinity,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DefaultTabbarPage(),
                    ),
                  );
                },
                child: Text('Default Tabbar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
