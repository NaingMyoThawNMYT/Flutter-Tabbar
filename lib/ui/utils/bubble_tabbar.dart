import 'package:flutter/material.dart';

class BubbleTabbar extends Container implements PreferredSizeWidget {
  BubbleTabbar({
    this.tabBar,
    this.color,
  })  : assert(tabBar != null),
        assert(color != null);

  final TabBar tabBar;
  final Color color;

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: tabBar,
    );
  }
}
