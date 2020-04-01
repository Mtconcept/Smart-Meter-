////import 'dart:js';
//
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//class HomePage extends StatefulWidget {
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//
//class _HomePageState extends State<HomePage> {
//  @override
//  Widget build(BuildContext context) {
//    try {
//      return Scaffold(
//        resizeToAvoidBottomPadding: false,
//        backgroundColor: Colors.white,
//        body: Container(
//          child: Padding(
//            padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: <Widget>[
//                    Text(
//                      'Welcome',
//                      style: TextStyle(
//                        fontSize: 30,
//                        color: Colors.black,
//                        fontFamily: 'Ubuntu-B',
//                        fontWeight: FontWeight.w700,
//                      ),
//                    ),
//                    IconButton(
//                      icon: Icon(Icons.account_circle),
//                      onPressed: () {},
//                      color: Colors.grey[400],
//                      iconSize: 30,
//                    )
//                  ],
//                ),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: <Widget>[
//                    Text(
//                      'View Our Collection of spaces',
//                      style: TextStyle(
//                          color: Colors.grey[400],
//                          fontSize: 18,
//                          fontFamily: 'Ubuntu'),
//                    ),
//                  ],
//                ),
//                Column(
//                  children: <Widget>[
//                    _spaces('ZEEGO SPACE ', 'assets/Main.png',
//                        'Semicolon Africa  Yaba', 'N 15,000')
//                  ],
//                ),
//                SizedBox(
//                  height: 20,
//                ),
//                Text(
//                  'Popular',
//                  style: TextStyle(
//                      color: Colors.grey[900],
//                      fontSize: 18,
//                      fontWeight: FontWeight.bold),
//                ),
//                Column(
//                  children: <Widget>[
//                    _space2('assets/Main.png', 'AFIN','N6,000/Daily',Icon(Icons.star))
//                  ],
//                )
//              ],
//            ),
//          ),
//        ),
//      );
//    } catch (e) {
//      print(e);
//    }
//  }
//}
//
//Widget _spaces(String name, String img, String address, String price) {
//  return Container(
//    child: Builder(
//      builder: (context) => InkWell(
//        child: Padding(
//          padding: const EdgeInsets.only(
//            top: 16.0,
//          ),
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Hero(
//                tag: img,
//                child: Container(
//                  height: MediaQuery.of(context).size.height - 450,
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(10),
//                    image: DecorationImage(
//                      image: AssetImage(img),
//                      fit: BoxFit.cover,
//                    ),
//                  ),
////                        child: Image(
////                          image: AssetImage(img),
////                          height: MediaQuery.of(context).size.height - 450,
////                          fit: BoxFit.cover,
////                        ),
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.only(left: 16, top: 16.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: <Widget>[
//                    Text(
//                      name,
//                      style: TextStyle(
//                          color: Colors.black,
//                          fontSize: 24,
//                          fontWeight: FontWeight.bold),
//                    ),
//                    Container(
//                      width: 94,
//                      height: 40,
//                      decoration: BoxDecoration(
//                        color: Colors.blue,
//                        borderRadius: BorderRadius.circular(24),
//                      ),
//                      child: Center(
//                        child: Text(
//                          '$price',
//                          style: TextStyle(
//                              color: Colors.white, fontWeight: FontWeight.bold),
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.only(left: 16.0),
//                child: Text(
//                  address,
//                  style: TextStyle(
//                    color: Colors.grey[600],
//                    fontSize: 16,
//                    fontWeight: FontWeight.normal,
//                  ),
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    ),
//  );
//}
//
//Widget _space2(String image, String name, String price, Icon icon) {
//  return Scaffold(
//    resizeToAvoidBottomPadding: false,
//    resizeToAvoidBottomInset: false,
//    body: Row(
//      children: <Widget>[
//        Hero(
//            tag: image,
//            child: Builder(
//              builder: (context) => InkWell(
//                child: Container(
//                  height: 60,
//                  width: 30,
//                  color: Colors.white,
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(10),
//                    image: DecorationImage(
//                      image: AssetImage(image),
//                    ),
//                  ),
//                  child: Column(
//                    children: <Widget>[
//                      Text(
//                        name,
//                        style: TextStyle(
//                          color: Colors.black,
//                          fontSize: 12,
//                        ),
//                      ),
//                      Row(
//                        children: <Widget>[
//                          Text(
//                            price,
//                            style: TextStyle(
//                              color: Colors.blue,
//                            ),
//                            overflow: TextOverflow.fade,
//                          ),
//                          Text(
//                            price,
//                            style: TextStyle(
//                              color: Colors.grey,
//                            ),
//                          ),
//                          Row(
//                            children: <Widget>[
//                            ],
//                          )
//                        ],
//                      )
//                    ],
//                  ),
//                ),
//              ),
//            )),
//      ],
//    ),
//  );
//}
