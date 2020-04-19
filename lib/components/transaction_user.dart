import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'transaction_form.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: "t1",
        title: "New Running Shoes",
        amount: 250.50,
        date: DateTime.now()),
    Transaction(
      id: "t2",
      title: "Power Bill",
      amount: 120.30,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double amount) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
