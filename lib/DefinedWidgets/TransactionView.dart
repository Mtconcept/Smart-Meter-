import 'package:flutter/material.dart';
import 'package:friendly_chat/models/TrasactionModels.dart';

class TransactionView extends StatefulWidget {
  final TransactionModels transactions;

  TransactionView({Key key, this.transactions}) : super(key: key);
  @override
  _TransactionViewState createState() => _TransactionViewState();
}

class _TransactionViewState extends State<TransactionView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            widget.transactions.transactionIcon == "-"
                ? Icon(
                    Icons.arrow_downward,
                    color: Colors.red.withOpacity(0.5),
                  )
                : Icon(
                    Icons.arrow_upward,
                    color: Colors.green.withOpacity(0.5),
                  ),
            Center(
              child: Text(
                widget.transactions.transactionDetails +
                    widget.transactions.transactionIcon,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              widget.transactions.amount.toString(),
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
