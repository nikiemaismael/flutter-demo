import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Code QR '),
      ),
      body: Center(
        child: QrImageView(
          data: ' ${DateTime.now()}',
          version: QrVersions.auto,
          size: 300.0,
        ),
      ),
    );
  }
}
