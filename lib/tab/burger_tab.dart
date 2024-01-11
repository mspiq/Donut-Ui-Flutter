import 'package:donut_app_ui/util/donut_tile.dart';
import 'package:flutter/material.dart';

class burgerTab extends StatelessWidget {
  List burgerOnSale = [
    //[name , price , color , imagepath]

    [" دبل ", "1.5", Colors.blue, "lib/images/burger/1.png"],
    ["بالجبن", "2", Colors.green, "lib/images/burger/2.png"],
    ["3 قطع", "23", Colors.pink, "lib/images/burger/3.png"],
    ["بالدجاج و لحم", "12", Colors.purple, "lib/images/burger/4.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerOnSale.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutName: burgerOnSale[index][0],
          dountprice: burgerOnSale[index][1],
          donutcolor: burgerOnSale[index][2],
          imagepath: burgerOnSale[index][3],
        );
      },
    );
  }
}
