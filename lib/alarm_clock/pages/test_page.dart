import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  double _mediaHeight;
  double _mediaWidth;

  @override
  Widget build(BuildContext context) {
    _mediaHeight = MediaQuery.of(context).size.height;
    _mediaWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: _mediaHeight * 0.2,
            width: _mediaHeight * 0.2,
            decoration: BoxDecoration(
              color: Colors.blue[100],
              shape: BoxShape.circle,
              border: Border.all(
                width: 1.5,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: _mediaHeight * 0.15,
            width: _mediaHeight * 0.15,
            decoration: BoxDecoration(
              color: Colors.red[100],
              shape: BoxShape.circle,
              border: Border.all(
                width: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
