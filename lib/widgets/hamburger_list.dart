import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HamburgerList extends StatefulWidget {
  @override
  _HamburgerListState createState() => _HamburgerListState();
}

class _HamburgerListState extends State<HamburgerList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;

    Widget _buildBaconImage() {
      return Container(
        height: 100,
        width: 100,
        child: Image.asset("images/bacon_burger.jpg"),
      );
    }

    Widget _buildChickenImage() {
      return Container(
        height: 120,
        width: 120,
        child: Image.asset("images/chicken_burger.jpg"),
      );
    }

    return SliverToBoxAdapter(
      child: Container(
        height: 200,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: items,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            bool reverse = index.isEven;
            return Stack(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: index == items ? 20 : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              "Burger",
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
                                Text(
                                  "15,95 \$ USA",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
                Positioned(
                  top: reverse ? 50 : 50,
                  child: GestureDetector(
                    onTap: () {},
                    child: reverse
                        ? _buildChickenImage()
                        : _buildBaconImage(),
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
