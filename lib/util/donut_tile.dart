import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutName;
  final String dountprice;
  final donutcolor;
  final String imagepath;
  const DonutTile(
      {super.key,
      required this.donutName,
      required this.dountprice,
      this.donutcolor,
      required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: donutcolor[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          //price
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(10)),
                  color: donutcolor[100],
                ),
                child: Text(
                  "\$ " + dountprice,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: donutcolor[800],
                      fontSize: 18),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Image.asset(imagepath),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            donutName,
            style: TextStyle(
                color: donutcolor[900],
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.grey[800],
                      ))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
