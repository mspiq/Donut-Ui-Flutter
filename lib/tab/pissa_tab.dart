import 'package:donut_app_ui/util/donut_tile.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class pissaTab extends StatelessWidget {
  List pizzaOnSale = [
    //[name , price , color , imagepath]

    ["بيزا عادية", "1.5", Colors.blue, "lib/images/pizza/2.png"],
    ["بيزا بالجبن", "2", Colors.green, "lib/images/pizza/1.png"],
    ["بيزا خضار", "23", Colors.pink, "lib/images/pizza/3.png"],
    ["بيزا لحم", "12", Colors.purple, "lib/images/pizza/4.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzaOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutName: pizzaOnSale[index][0],
          dountprice: pizzaOnSale[index][1],
          donutcolor: pizzaOnSale[index][2],
          imagepath: pizzaOnSale[index][3],
        );
      },
    );
  }
}
