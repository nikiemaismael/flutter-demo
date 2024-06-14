import 'package:flutter/material.dart';

class CarteB extends StatelessWidget {
  const CarteB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Carte bancaire'),
        ),
        body: Center(
          child: Text('Carte bancaire '),
        ),
      ),
    );
  }
}
