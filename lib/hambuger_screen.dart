import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_hamberger/categories.dart';
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
          Categories(),
          SliverList(
            delegate: SliverChildListDelegate([
              Text(
                "Hamburger",
                style: TextStyle(fontSize: 200),
              ),
            ]),
          ),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  icon: Icon(Icons.add_alert, color: Colors.white),
                  onPressed: () {},
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.turned_in, color: Colors.white),
                  onPressed: () {},
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
