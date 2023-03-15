import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './drawer_header.dart';
import './drawer_tile.dart';

import '../screens/home.dart';
import '../screens/screen_no_drawer.dart';
import '../screens/screen_tab_bar.dart';
import '../screens/screen_listview.dart';
import '../screens/screen_segment.dart';
import '../screens/screen_bottom_nav.dart';

Widget myDrawer(){
  return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
        
drawerHeader(),

drawerTile(() => Get.to(Home()), Icons.house, 'home'),
drawerTile(() => Get.to(ScreenNoDrawer()), Icons.house, 'screen no drawer'),    
drawerTile(() => Get.to(ScreenTabBar()), Icons.apartment, 'screen tab bar'), 
drawerTile(() => Get.to(ScreenListView()), Icons.house_outlined, 'screen list view'), 
drawerTile(() => Get.to(ScreenSegment()), Icons.house, 'screen segment'),
drawerTile(() => Get.to(ScreenBottomNav()), Icons.house, 'screen bottom nav bar'),


const Divider(height: 10, thickness: 1),

drawerTile(() => Get.to(Home()), Icons.favorite, 'Favorites'),   

]));}
