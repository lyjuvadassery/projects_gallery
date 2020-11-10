import 'package:flutter/material.dart';
import 'package:projects_gallery/wallet/utilities/colors.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  int _counter = 0;
  double _mediaHeight;
  double _mediaWidth;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    _mediaHeight = MediaQuery.of(context).size.height;
    _mediaWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backgroundBlue,
      appBar: AppBar(
        backgroundColor: backgroundBlue,
        elevation: 0.0,
        leading: Icon(
          Icons.menu,
          color: white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
            ),
            child: Icon(
              Icons.add,
              color: white,
            ),
          ),
        ],
      ),
      body: Container(
        // height: _mediaHeight * 0.5,
        // color: Colors.orange,
        child: Stack(
          children: [
            Container(),
            Positioned(
              top: _mediaHeight / 15,
              left: _mediaWidth / 6,
              // top: 100.0,
              // left: 100.0,
              child: Container(
                height: _mediaWidth * 0.3,
                width: _mediaWidth * 0.3,
                decoration: BoxDecoration(
                  color: purple,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
            Positioned(
              top: _mediaHeight / 15 + 20.0,
              left: _mediaWidth / 6 + _mediaWidth * 0.3 + 20.0,
              // top: 100.0,
              // left: 100.0,
              child: Container(
                height: _mediaWidth * 0.3,
                width: _mediaWidth * 0.3,
                decoration: BoxDecoration(
                  color: lightBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
            Positioned(
              top: _mediaHeight / 15 + _mediaWidth * 0.3 + 20.0,
              left: _mediaWidth / 6 - 20.0,
              // top: 100.0,
              // left: 100.0,
              child: Container(
                height: _mediaWidth * 0.3,
                width: _mediaWidth * 0.3,
                decoration: BoxDecoration(
                  color: pink,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
            Positioned(
              top: _mediaHeight / 15 + 20.0 + _mediaWidth * 0.3 + 20.0,
              // top: mediaHeight / 15 + mediaWidth * 0.3 + 20.0,
              left: _mediaWidth / 6 + _mediaWidth * 0.3,
              // top: 100.0,
              // left: 100.0,
              child: Container(
                height: _mediaWidth * 0.3,
                width: _mediaWidth * 0.3,
                decoration: BoxDecoration(
                  color: backgroundBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
