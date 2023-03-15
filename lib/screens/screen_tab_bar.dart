import 'package:flutter/material.dart';
import '../style.dart';

class ScreenTabBar extends StatelessWidget {

@override Widget build(BuildContext bc){
return DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(backgroundColor: appColor,
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.flight)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_car)),
        ],
      ),
      title: Text('Tabs Demo'),
    ),
    body: TabBarView(
      children: [
        Icon(Icons.flight, size: 350),
        Icon(Icons.directions_transit, size: 350),
        Icon(Icons.directions_car, size: 350),
      ],
    ),
  ),
);}}
