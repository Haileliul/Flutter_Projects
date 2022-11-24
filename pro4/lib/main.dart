import 'package:flutter/material.dart';
import './transacion.dart';
import 'package:intl/intl.dart';

void main() => runApp(myapp());

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter App',
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatelessWidget {
  // const MyhomePage({super.key});

  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'Banana',
      amount: 20.1,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Mango',
      amount: 2.1,
      date: DateTime.now(),
    )
  ];

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter App'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 50.0,
              child: Card(
                color: Colors.blue[50],
                child: Text(
                  "This is chart",
                  style: TextStyle(),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: titleController,
                      // onChanged: (value) {
                      //   titleInput = value;
                      // },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      controller: amountController,

                      //   onChanged: (value) => Amount = value,
                    ),
                    TextButton(
                      onPressed: () {
                        print(titleController.text);
                        print(amountController.text);
                      },
                      child: Text('Add Transaction'),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.purple[100]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 100.0,
              child: Card(
                color: Colors.amber[200],
                elevation: 5,
                child: Column(
                  children: transaction.map((tx) {
                    return Card(
                      elevation: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Text(
                              '\$ ${tx.amount}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.purple,
                                width: 1,
                              ),
                            ),
                            padding: EdgeInsets.all(8),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  tx.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  DateFormat.yMMMEd().format(tx.date),
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
