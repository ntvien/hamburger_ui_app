// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_app_hamberger/screen/hambuger_screen.dart';
import 'package:flutter_app_hamberger/screen/hamburger_detail_screen.dart';
import 'widgets/header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true),
        cardColor: Colors.white,
        bottomAppBarColor: Colors.teal,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,
        ),
      ),
      home: HamburgerScreen(),
      routes: {
        HamburgerDetail.tag: (_) => HamburgerDetail()
      },
    );
  }
}
