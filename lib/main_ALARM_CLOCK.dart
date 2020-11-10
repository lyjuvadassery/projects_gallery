// alarm_clock
// UI demo based on a Dribbble design.

import 'package:flutter/material.dart';
import 'package:projects_gallery/alarm_clock/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarm Clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      // home: TestPage(),
    );
  }
}
