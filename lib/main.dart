import 'package:flutter/material.dart';
import 'package:flutter_expenses/components/transaction_user.dart';
import 'package:flutter_expenses/models/transaction.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Personal Expenses"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Card(
                  child: Text("Charts"),
                  elevation: 5,
                  color: Colors.blue,
                ),
              ),
              TransactionUser(),
            ],
          ),
        ));
  }
}
