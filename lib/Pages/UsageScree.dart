import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsageScreen extends StatefulWidget {
  @override
  _UsageScreenState createState() => _UsageScreenState();
}

class _UsageScreenState extends State<UsageScreen> {
  @override
  bool isSwitched = true;
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 60),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/tee 2.jpg'),
                    backgroundColor: Color(0xffFFA448),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Hello Tee',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff333333),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Container(
                    width: 350,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFF7F3),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 16),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xffFFA448),
                                      Color(0xffFF0488),
                                    ],
                                  ),
                                ),
                                child: Icon(
                                  Icons.offline_bolt,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                'Energy Consumption Today',
                                style: TextStyle(
                                    color: Color(0xff333333),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 63),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'N370',
                                style: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                'kwh',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff333333),
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, top: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Meter Switch',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff333333),
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: <Widget>[
                          Text('Turn meter',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff333333),
                                decoration: TextDecoration.none,
                              )),
                          Text('ON/OFF',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFF542B),
                                decoration: TextDecoration.none,
                              )),
                          Text('if you are 5meters away',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff333333),
                                decoration: TextDecoration.none,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeColor: Colors.orange,
                )
              ],
            ),
//          Slider(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Set Usage Limit',
                    style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Daily',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset.fromDirection(1.5),
                        blurRadius: 2),
                  ],
                  borderRadius: BorderRadius.circular(10)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                BottomNavigationBar(
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        color: Color(0xff333333),
                      ),
                      activeIcon: Icon(
                        Icons.home,
                        color: Colors.orange,
                      ),
                      title: Text('Home'),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.payment,
                      ),
                      activeIcon: Icon(
                        Icons.payment,
                        color: Colors.orange,
                      ),
                      title: Text('Payment'),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.notifications_none,
                      ),
                      activeIcon: Icon(
                        Icons.notifications_none,
                        color: Colors.orange,
                      ),
                      title: Text('Notification'),
                    ),
                  ],
                  type: BottomNavigationBarType.fixed,
                  elevation: 3,
                  unselectedItemColor: Color(0xff333333),
                  selectedItemColor: Colors.orange,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//bool switchMeter(bool isOn, bool isOff){
//
//if(
//isOff = true){
//  Colors.grey;
//}
//else {
//  isOn = true;
//  Colors.redAccent;
//
//}
//return switchMeter(true, false);
//}
