import 'package:flutter/material.dart';

import 'bubble_tabbar_page.dart';
import 'default_text_tabbar_with_controller_page.dart';
import 'google_style_tabbar_page.dart';
import 'selected_bubble_tabbar_page.dart';
import 'default_icon_and_text_tabbar_page.dart';
import 'default_icon_tabbar_page.dart';
import 'default_text_tabbar_page.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          ButtonTheme(
            minWidth: double.infinity,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DefaultIconTabbarPage(),
                  ),
                );
              },
              child: Text('Default Icon Tabbar'),
            ),
          ),
          ButtonTheme(
            minWidth: double.infinity,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DefaultTextTabbarPage(),
                  ),
                );
              },
              child: Text('Default Text Tabbar'),
            ),
          ),
          ButtonTheme(
            minWidth: double.infinity,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DefaultIconAndTextTabbarPage(),
                  ),
                );
              },
              child: Text('Default Icon & Text Tabbar'),
            ),
          ),
          ButtonTheme(
            minWidth: double.infinity,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectedBubbleTabbarPage(),
                  ),
                );
              },
              child: Text('Selected Bubble Tabbar'),
            ),
          ),
          ButtonTheme(
            minWidth: double.infinity,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoogleStyleTabbarPage(),
                  ),
                );
              },
              child: Text('Google Style Tabbar'),
            ),
          ),
          ButtonTheme(
            minWidth: double.infinity,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BubbleTabbarPage(),
                  ),
                );
              },
              child: Text('Bubble Tabbar'),
            ),
          ),
          ButtonTheme(
            minWidth: double.infinity,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DefaultTextTabbarWithTabControllerPage(),
                  ),
                );
              },
              child: Text('Default Text Tabbar with Controller'),
            ),
          ),
        ],
      ),
    );
  }
}
