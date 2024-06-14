import 'package:demo/services/date.formater.dart';
import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  TextEditingController Inputcontroller = TextEditingController();
  final transactions = [
    {
      'label': 'Transaction',
      'price': '25.5550',
      'type': 'type',
      'date': DateTime.now(),
    },
    {
      'label': 'Transaction',
      'price': '30.0001',
      'type': 'type',
      'date': DateTime.now(),
    },
    {
      'label': 'Transaction',
      'price': '1.000',
      'type': 'type',
      'date': DateTime.now(),
    },
    {
      'label': 'Transaction',
      'price': '5.000',
      'type': 'type',
      'date': DateTime.now(),
    },
    {
      'label': 'Transaction',
      'price': '5.000',
      'type': 'type',
      'date': DateTime.now(),
    },
    {
      'label': 'Transaction',
      'price': '5.000',
      'type': 'type',
      'date': DateTime.now(),
    },
    {
      'label': 'Transaction',
      'price': '5.000',
      'type': 'type',
      'date': DateTime.now(),
    },
    {
      'label': 'Transaction',
      'price': '5.000',
      'type': 'type',
      'date': DateTime.now(),
    },
    {
      'label': 'Transaction',
      'price': '5.000',
      'type': 'type',
      'date': DateTime.now(),
    },
    {
      'label': 'Transaction',
      'price': '5.000',
      'type': 'type',
      'date': DateTime.now(),
    },
  ];
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Transactions')),
          body: Padding(
            padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Form(
                      child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 48,
                          child: TextFormField(
                            controller: Inputcontroller,
                            decoration: InputDecoration(
                              // labelText: 'Recherche',
                              label: const Text('Recherche'),
                              border: const OutlineInputBorder(),
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  Inputcontroller.clear();
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 55,
                          width: 55,
                          child: IconButton(
                            style: ButtonStyle(
                              shape: WidgetStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                      color: Colors.black12, width: 1.0),
                                ),
                              ),
                            ),
                            iconSize: 30,
                            tooltip: 'Recherche',
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              // setState(() {
                              //   transactions.forEach(action)
                              // });
                            },
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Mes transactions",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    // padding: const EdgeInsets.all(8),
                    itemCount: transactions.length,
                    itemBuilder: (context, index) {
                      final transaction = transactions[index];
                      final label = transaction['label'];
                      final price = transaction['price'];
                      //final type = transaction['type'];
                      final date = transaction['date'];

                      return ListTile(
                        title: Text('$label ${index + 1}'),
                        subtitle: Text('$price FCFA'),
                        trailing: Text(formatDate(date)),
                        onTap: () => _selected = true,
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
