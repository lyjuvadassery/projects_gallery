import 'package:flutter/material.dart';

class MenuItem {
  String name;
  double price;
  String image;

  MenuItem({this.name, this.price, this.image});
}

final blackGold = MenuItem(
  name: 'Black Gold',
  price: 59.99,
  image: 'coffee1.png',
);

final coldBrew = MenuItem(
  name: 'Cold Brew',
  price: 40.49,
  image: 'coffee1.png',
);

final nescafe = MenuItem(
  name: 'Nescafe',
  price: 30.00,
  image: 'coffee1.png',
);

final mccafe = MenuItem(
  name: 'McCafe',
  price: 49.99,
  image: 'coffee1.png',
);

final goldBrew = MenuItem(
  name: 'Gold Brew',
  price: 59.99,
  image: 'coffee1.png',
);
