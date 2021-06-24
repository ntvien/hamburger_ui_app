import 'package:flutter/material.dart';
import 'package:flutter_app_hamberger/hambuger_screen.dart';
import 'header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true),
      ),
      home: HamburgerScreen(),
    );
  }
}
