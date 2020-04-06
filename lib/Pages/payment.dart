import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friendly_chat/DefinedWidgets/CardTypeDetails.dart';
import 'package:friendly_chat/DefinedWidgets/TransactionView.dart';
import 'package:friendly_chat/models/PaymentModel.dart';
import 'package:friendly_chat/models/TrasactionModels.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int _currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFBFBFB),
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
                  builder: (BuildContext context) => Payment(),
                ),
              );
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Payment Gateway',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0,
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.black54,
                ),
                onPressed: () {}),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 36, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //Card Ui implemented
              CardTypeDetails(
                PaymentModel(
                currency: 'Naira',
                currentAmount:45000,
                cardType: 'MasterCard',
                accountNum: 1222090412119908,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Recent Transactions',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // implemented transactions
              TransactionView(
                transactions: TransactionModels(
                  transactionDetails:'Semicolon Nepa Bill February',
                  transactionIcon: '-',
                  amount: 5000


                ),
              ),
              SizedBox(height: 16,),
              TransactionView(
                transactions: TransactionModels(
                    transactionDetails:'N 5000 Credit',
                    transactionIcon: '+',
                    amount: 25000

                ),
              )
            ],
          ),
        ),);
  }
}
