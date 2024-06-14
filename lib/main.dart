import 'package:demo/ui/pages/exemple.dart';
import 'package:demo/ui/pages/home.page.dart';
import 'package:demo/ui/pages/qr.code.dart';
import 'package:demo/ui/pages/setting.dart';
import 'package:demo/ui/pages/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  await initializeDateFormatting('fr_FR', null);
  runApp(const MyApp());
}

runMyCode() {}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPageIndex = 0;
  TextEditingController loginController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Permet de supprimer le banner debug
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.account_balance_wallet),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.qr_code_2),
              label: 'Code QR',
            ),
            NavigationDestination(
              icon: Icon(Icons.document_scanner),
              label: 'Scanner',
            ),
            NavigationDestination(
              icon: Icon(Icons.wallet),
              label: 'Transaction',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
        /* appBar: AppBar(title: const Text('Login')), */
        body: [
          const Home(),
          const GenerateQRCode(),
          const QRViewExample(),
          const Transaction(),
          const Setting(),
        ][currentPageIndex],
      ),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
