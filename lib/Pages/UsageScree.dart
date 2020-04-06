import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as Charts;
import 'package:flutter/rendering.dart';
import 'package:friendly_chat/Pages/payment.dart';

class UsageScreen extends StatefulWidget {
  @override
  _UsageScreenState createState() => _UsageScreenState();
}

class _UsageScreenState extends State<UsageScreen> {
  bool isSwitched = true;
  RangeValues values = RangeValues(1, 10);
  RangeLabels labels = RangeLabels('1', '10');
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var data = [
      ShowsUsage(230, '12:00am', Colors.orangeAccent),
      ShowsUsage(230, '1:00am', Colors.orangeAccent),
      ShowsUsage(460, '2:00am', Colors.deepOrange),
      ShowsUsage(90, '3:00am', Colors.orangeAccent),
      ShowsUsage(120, '4:00am', Colors.orangeAccent),
      ShowsUsage(190, '6:00am', Colors.orangeAccent),
    ];
    var datas = [
      ShowsUsage(230, 'January', Colors.orangeAccent),
      ShowsUsage(230, 'february', Colors.orangeAccent),
      ShowsUsage(460, 'march', Colors.deepOrange),
      ShowsUsage(90, 'April', Colors.orangeAccent),
      ShowsUsage(120, 'may', Colors.orangeAccent),
      ShowsUsage(190, 'june', Colors.orangeAccent),
    ];
    var series = [
      new Charts.Series(
        id: 'clicks',
        data: data,
        domainFn: (ShowsUsage clickData, _) => clickData.hours,
        measureFn: (ShowsUsage clickData, _) => clickData.clicks,
        colorFn: (ShowsUsage clickData, _) => clickData.color,
      ),
    ];
    var series1 = [
      new Charts.Series(
        id: 'clicks',
        data: datas,
        domainFn: (ShowsUsage clickData, _) => clickData.hours,
        measureFn: (ShowsUsage clickData, _) => clickData.clicks,
        colorFn: (ShowsUsage clickData, _) => clickData.color,
      ),
    ];

    var chart = new Charts.BarChart(
      series,
      animate: true,
      animationDuration: Duration(seconds: 2),
    );
    var chart1 = new Charts.BarChart(
      series1,
      animate: true,
      animationDuration: Duration(seconds: 2),
    );

    var chartsWidget = Padding(
      padding: EdgeInsets.all(24),
      child: SizedBox(
        height: 100,
        child: chart,
      ),
    );

    var chartsWidget1 = Padding(
      padding: EdgeInsets.only(left: 24, bottom: 12, right: 24,),
      child: Row(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height:130,
              width: 300,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child:chart1,
            ),
          )
        ],
      ),
    );
    return Material(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
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
                          fontSize: 24,
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
                      padding: const EdgeInsets.only(left: 24.0, right: 24),
                      child: Container(
                        width: 360,
                        height: 212,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFFF7F3),
                        ),
                        child: Column(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 16, top: 16),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
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
                                            fontSize: 16,
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
                                        'N370 ',
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
                                          fontSize: 16,
                                          color: Color(0xff333333),
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.none,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            chartsWidget,
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
                              Text('Turn meter ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff333333),
                                    decoration: TextDecoration.none,
                                  )),
                              Text('ON/OFF ',
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
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, bottom: 16, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Set Usage Limit',
                        style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Daily',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFF7F3),
                  ),
                  child: RangeSlider(
                    labels: labels,
                    values: values,
                    divisions: 5,
                    onChanged: (value) {
                      setState(() {
                        values = value;
                        labels = RangeLabels('${value.start.toString()}kwh',
                            '${value.end.toString()}kwh');
                      });
                    },
                    activeColor: Colors.orange,
                    min: 1,
                    max: 10,
                  ),
                ),
                SizedBox(
                  height: 24,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 16, top: 16),
                        child: Text(
                          ' Usage History  ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff333333)),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      chartsWidget1
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[

                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
          currentIndex: _currentIndex,
          unselectedItemColor: Color(0xff333333),
          selectedItemColor: Colors.orange,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      Payment(),
                ),
              );
            });
          },
        ),
      ),
    );
  }
}

class ShowsUsage {
  final int clicks;
  final String hours;
  final Charts.Color color;

  ShowsUsage(this.clicks, this.hours, Color color)
      : this.color = new Charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}
