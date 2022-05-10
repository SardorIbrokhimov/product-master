import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:glassmorphism/glassmorphism.dart';

class SideBar extends StatefulWidget {
  static const String id = "sidebar";

  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black.withOpacity(0.3),
      child: Stack(
        children: [
          ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: Container(

                  
      ),
                accountName: Text(""),
                accountEmail: Text(""),
                decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.2)
                ),
              ),
              ListTile(
                title: Text(
                  "AirPods",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text(
                  "AirPods",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text(
                  "AirPods",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text(
                  "AirPods",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
              ),
              Divider(
                color: Colors.grey,
              ),




            ],
          )
        ],
      ),
    );
  }
}
