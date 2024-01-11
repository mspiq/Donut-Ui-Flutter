import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                "mohamed",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              accountEmail: const Text(
                "mohamed@gamil.com",
                style: TextStyle(color: Colors.grey),
              ),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.lime,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.grey[100]),
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text("القائمة الرئيسية"),
                    leading: Icon(
                      Icons.home,
                      color: Colors.red,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                )
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text("حسابي"),
                    leading: Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                )
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text("المفضلة"),
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
