import 'package:flutter/material.dart';
import 'package:navdanroute/firstscreen.dart';
import 'package:navdanroute/fourthscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firstscreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/fourth':(context) => fourthscreen()
      },
    );
  }
}
