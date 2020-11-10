import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' show radians;

class ClockTicks extends StatelessWidget {
  ClockTicks({
    Key key,
    @required this.unit,
    // @required this.customTheme,
  }) : super(key: key);

  final double unit;
  // final ThemeData customTheme;

  double _mediaHeight;
  double _mediaWidth;

  @override
  Widget build(BuildContext context) {
    _mediaHeight = MediaQuery.of(context).size.height;
    _mediaWidth = MediaQuery.of(context).size.width;

    return Container(
      height: _mediaHeight * 0.34,
      width: _mediaHeight * 0.34,
      child: Stack(
        children: <Widget>[
          for (var i = 0; i < 12; i++)
            Center(
              child: Transform.rotate(
                angle: radians(0 + 360 / 12 * i),
                child: Transform.translate(
                  offset: Offset(0, i % 3 == 0 ? -10 * unit : -10.2 * unit),
                  child: Container(
                    // color: customTheme.cursorColor,
                    color: Colors.black,
                    height: i % 3 == 0 ? 1.0 * unit : 1.0 * unit,
                    width: i % 3 == 0 ? 0.1 * unit : 0.2 * unit,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
