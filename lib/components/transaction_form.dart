import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String, double) addNewTransaction;

  TransactionForm(this.addNewTransaction);

  @override
  _TransactionFormState createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  _onSubmit() {
    final title = titleController.text;
    final amount = double.tryParse(amountController.text) ?? 0.0;

    if (title.isEmpty || amount <= 0) {
      return;
    }

    widget.addNewTransaction(title, amount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              onSubmitted: (_) => _onSubmit(),
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => _onSubmit(),
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: _onSubmit,
                  child: Text('New Transaction'),
                  textColor: Colors.purple,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
