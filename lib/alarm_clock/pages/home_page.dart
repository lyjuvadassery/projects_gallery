import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects_gallery/alarm_clock/utilities/colors.dart';
import 'package:projects_gallery/alarm_clock/widgets/clock_ticks.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _mediaHeight;
  double _mediaWidth;

  final IconData baseball = const IconData(0xf3dd,
      fontFamily: CupertinoIcons.iconFont,
      fontPackage: CupertinoIcons.iconFontPackage);

  void _addEvent() {
    // TODO: Create the Add Event page.
  }

  @override
  Widget build(BuildContext context) {
    _mediaHeight = MediaQuery.of(context).size.height;
    _mediaWidth = MediaQuery.of(context).size.width;
    final unit = _mediaWidth / 25;

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        elevation: 0.0,
        leadingWidth: 80.0,
        leading: Container(
          // color: Colors.red[100],
          child: Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.cloud_drizzle,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '7 \u2109',
                  style: GoogleFonts.notoSans(
                    textStyle: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        title: Container(
          width: _mediaWidth * 0.7,
          color: Colors.green[100],
          // child: Text(
          //   'Clock',
          //   style: GoogleFonts.titanOne(
          //     textStyle: TextStyle(
          //       fontSize: 22.0,
          //       color: lightGreyColor,
          //     ),
          //   ),
          // ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Icon(
              CupertinoIcons.wifi,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(baseball),
              ],
            ),
            SizedBox(
              height: _mediaHeight * 0.06,
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClockTicks(
                    unit: unit,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: _buildCentralDial(),
                ),
                Align(
                  alignment: Alignment.center,
                  child: _buildSfRadialGauge(),
                ),
                // Align(
                //   alignment: Alignment.center,
                //   child: ClockTicks(
                //     unit: unit,
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: _mediaHeight * 0.1,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              elevation: 10.0,
              child: Container(
                height: _mediaHeight * 0.15,
                width: _mediaWidth * 0.7,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mom\'s Birthday',
                      style: GoogleFonts.notoSans(
                        textStyle: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _mediaHeight * 0.02,
                    ),
                    Text(
                      '14' + 'd ' + '15' + 'h ' + '35' + 'm ' + '15' + 's',
                      style: GoogleFonts.notoSans(
                        textStyle: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCentralDial() {
    return Container(
      height: _mediaHeight * 0.32,
      width: _mediaHeight * 0.32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // color: Colors.grey.shade300,
        color: Colors.blueGrey[900],
        border: Border.all(
          color: Colors.black87.withOpacity(0.5),
          width: 5.0,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            color: Colors.grey[900],
            blurRadius: 10,
            spreadRadius: 0.0,
          ),
          BoxShadow(
            offset: Offset(0, -20),
            // color: Colors.white.withOpacity(0.2),
            color: Colors.blueGrey[800],
            blurRadius: 10,
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Sunday',
              style: GoogleFonts.titanOne(
                textStyle: TextStyle(
                  fontSize: 14.0,
                  color: lightGreyColor.withOpacity(0.4),
                ),
              ),
            ),
            Text(
              'Sep 24, 2020',
              style: GoogleFonts.titanOne(
                textStyle: TextStyle(
                  fontSize: 14.0,
                  color: lightGreyColor,
                ),
              ),
            ),
            Text(
              '08:30',
              style: GoogleFonts.titanOne(
                textStyle: TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 20.0,
              width: 60.0,
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: Center(
                child: Text(
                  '09:00',
                  style: GoogleFonts.titanOne(
                    textStyle: TextStyle(
                      fontSize: 14.0,
                      color: lightGreyColor,
                    ),
                  ),
                ),
              ),
            ),
            Icon(
              Icons.alarm_add_rounded,
              color: redColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSfRadialGauge() {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          minimum: 0,
          maximum: 100,
          showLabels: false,
          showTicks: false,
          axisLineStyle: AxisLineStyle(
            cornerStyle: CornerStyle.bothCurve,
            color: Colors.white30,
            thickness: 10,
          ),
        )
      ],
    );
  }
}
