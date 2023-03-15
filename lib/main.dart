
//
// flutter create myproject
// cd myproject
// flutter pub add get
// flutter run -d linux
//

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './screens/home.dart';

void main() => runApp(GetMaterialApp(home: Home(),
                      debugShowCheckedModeBanner: false));
