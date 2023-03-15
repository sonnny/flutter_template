import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../style.dart';
import '../widgets/my_drawer.dart';

class Home extends StatelessWidget{

@override Widget build(context) {
return Scaffold(

drawer: myDrawer(),
 
appBar: AppBar(

title: Text('home'),

backgroundColor: appColor),

body: Center(child: Column(children: [

SizedBox(height:50.0),
    
Text('''
This is
Home
Screen
     ''', style: myText()),

])));}}
