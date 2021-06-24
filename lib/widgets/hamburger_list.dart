import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_hamberger/screen/hamburger_detail_screen.dart';

class HamburgerList extends StatefulWidget {
  final int? row;
  HamburgerList({this.row});

  @override
  _HamburgerListState createState() => _HamburgerListState();
}

class _HamburgerListState extends State<HamburgerList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;

    Widget _buildBaconImage() {
      return Container(
        height: 85,
        width: 85,
        child: Image.asset("images/bacon_burger.jpg"),
      );
    }

    Widget _buildChickenImage() {
      return Container(
        height: 100,
        width: 100,
        child: Image.asset("images/chicken_burger.jpg"),
      );
    }

    return SliverToBoxAdapter(
      child: Container(
        height: widget.row == 2 ? 265 : 210,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: items,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: 200,
                  width: 190,
                  margin: EdgeInsets.only(
                    left: 10,
                    right: index == items ? 20 : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(HamburgerDetail.tag);
                    },
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              reverse ? "Chicken Burger" : "Bacon Burger",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Spacer(),
                                Text(
                                  "15,95 \$ USA",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(30),
                          topRight: Radius.circular(45),
                          topLeft: Radius.circular(45),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: reverse
                      ? EdgeInsets.only(left: 55, top: 55)
                      : EdgeInsets.only(left: 65, top: 60),
                  child: Positioned(
                    top: reverse ? 50 : 50,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(HamburgerDetail.tag);
                      },
                      child:
                          reverse ? _buildChickenImage() : _buildBaconImage(),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
