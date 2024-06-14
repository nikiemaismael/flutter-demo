import 'package:flutter/material.dart';

Widget compte(String title, String solde) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        Text(title, style: const TextStyle(fontSize: 18)),
        Text(solde, style: const TextStyle(fontSize: 20)),
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text('XOF', style: TextStyle(fontSize: 14)),
        ),
      ],
    ),
  );
}
