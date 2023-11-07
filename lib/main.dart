import 'package:flutter/material.dart';

import 'view/QRgeneratorSide/QrGenerator.dart';
import 'view/cameraSide/QrScanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => QrGenerator(),
        '/qrScannerSide': (context) => QrScanner(),
      },
    );
  }
}
