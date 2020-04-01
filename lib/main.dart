//import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'Pages/Homepage.dart';
import 'SplashScreen.dart';

void main() => (runApp(SmartMeter()));

class SmartMeter extends StatefulWidget {
  @override
  _SmartMeterState createState() => _SmartMeterState();
}

class _SmartMeterState extends State<SmartMeter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}





