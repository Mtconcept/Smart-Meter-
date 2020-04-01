import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Pages/Homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Login())));
}
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xffFFA448),
                Color(0xffFF0488),
              ])),
        ),
        Column(
          children: <Widget>[
            Expanded(
              flex:2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                          'assets/Smartlogo white.png'),
                    Text(
                      'Smart Meter',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Expanded(
                flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(
                        backgroundColor: Colors.amber,
                        strokeWidth: 3,
                      ),
                      SizedBox(height: 24,),
                      Center(
                        child: Text('Enhancing Power \n Supply one meter at a time', style: TextStyle(
                            fontSize: 16,color: Colors.white,decoration: TextDecoration.none
                        ),textAlign: TextAlign.center,),
                      )
                    ],
                  )
              ),
            ),

          ],
        )
      ],
    );
  }
}
