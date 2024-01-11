import 'package:donut_app_ui/util/donut_tile.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DountTab extends StatelessWidget {
  //List of dounts

  List dountsOnSale = [
    //[name , price , color , imagepath]

    ["بالايسكريم", "1.5", Colors.blue, "lib/images/donut/icecream_donut.png"],
    ["بالنوتلا", "2", Colors.green, "lib/images/donut/chocolate_donut.png"],
    ["بالعسل", "23", Colors.pink, "lib/images/donut/grape_donut.png"],
    ["بالشوفان", "12", Colors.purple, "lib/images/donut/strawberry_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: dountsOnSale.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutName: dountsOnSale[index][0],
          dountprice: dountsOnSale[index][1],
          donutcolor: dountsOnSale[index][2],
          imagepath: dountsOnSale[index][3],
        );
      },
    );
  }
}
