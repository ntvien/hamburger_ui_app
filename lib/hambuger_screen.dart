import 'package:flutter/material.dart';
import 'package:flutter_app_hamberger/header.dart';

class HamburgerScreen extends StatefulWidget {

  @override
  _HamburgerScreenState createState() => _HamburgerScreenState();
}

class _HamburgerScreenState extends State<HamburgerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text("Deliver Me"),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              )
            ],
          ),
          Header(),
          SliverList(
            delegate: SliverChildListDelegate(
                [
                  Text("Hamburger", style: TextStyle(fontSize: 20),),
                ]
            ),
          )
        ],
      ),
    );
  }
}
