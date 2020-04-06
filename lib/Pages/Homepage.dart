import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'UsageScree.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/smart meter logo gradient .svg',
                        color: Colors.amber,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 48, left: 24, right: 24),
                        child: Container(
                          width: 320,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color(0xff969393),
                                style: BorderStyle.solid,
                                width: 1.5),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 16.0),
                              hintText: 'Enter Meter ID',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Color(0xff333333),
                              ),
                            ),
                            cursorColor: Color(0xffFF542B),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: InkWell(
                          splashColor: Color(0xffFFE2D5),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    UsageScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 320,
                            height: 48,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xffFFA448),
                                  Color(0xffFF0488),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Ubuntu'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            splashColor: Color(0xffFFE2D5),
                            onTap: () {},
                            child: Text(
                              'I Don’t Have a Meter ID',
                              style: TextStyle(
                                  color: Color(0xffFF542B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'Ubuntu'),
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
