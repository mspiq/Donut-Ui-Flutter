import 'package:donut_app_ui/pages/myDrawer.dart';
import 'package:donut_app_ui/tab/dount_tab.dart';
import 'package:donut_app_ui/tab/burger_tab.dart';
import 'package:donut_app_ui/tab/pancakes_tab.dart';
import 'package:donut_app_ui/tab/pissa_tab.dart';
import 'package:donut_app_ui/tab/smoothie_tab.dart';
import 'package:donut_app_ui/util/My_tab.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // My tabs
  final List<Widget> Mytabs = [
    const MyTab(
      iconpath: "lib/icon/burger.png",
    ),
    const MyTab(
      iconpath: "lib/icon/donut.png",
    ),
    const MyTab(
      iconpath: "lib/icon/pizza.png",
    ),
    const MyTab(
      iconpath: "lib/icon/pancakes.png",
    ),
    const MyTab(
      iconpath: "lib/icon/smoothie.png",
    ),
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Mytabs.length,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.green[800],
                size: 32,
              ),
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.grey[800],
                  size: 32,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(children: [
          // i want to eat
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  "هل انت ",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                Text(
                  "جائع !",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 1,
          ),

          //tab bar
          TabBar(tabs: Mytabs),

          //tan bar view
          Expanded(
              child: TabBarView(children: [
            burgerTab(),
            DountTab(),
            pissaTab(),
            smoothieTab(),
            pancakesTab()
          ]))
        ]),
      ),
    );
  }
}
