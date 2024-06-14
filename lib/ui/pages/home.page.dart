import 'package:demo/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
          ),
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Container(
                      padding: const EdgeInsets.all(3),
                      // height: 100,
                      // width: 150,
                      // color: Colors.cyan,
                      child: const Column(
                        children: [
                          Text(
                            'Balance totale',
                            style: TextStyle(fontSize: 15),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '100000',
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                '€',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 20),
                  child: const Text("Mes instruments de payement",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(color: Colors.blue, width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      compte('Wave money', '100000'),
                      compte('MTN money', '100000'),
                      compte('Moov money', '100000'),
                      compte('Carte bancaire', '100000'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
