// coffee_shop
// UI that is based on a Dribbble design.

import 'package:projects_gallery/coffee_shop/pages/select_coffee_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee House',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SelectCoffeePage(),
    );
  }
}
