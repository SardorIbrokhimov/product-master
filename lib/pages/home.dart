import 'dart:math';

import 'package:flutter/material.dart';
import 'package:product/pages/rasm.dart';
import 'package:product/pages/sidebar.dart';

class HomePage extends StatefulWidget {
  static const String id = "home";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

Icon _fill = Icon(
  Icons.star,
  color: Colors.yellow,
  size: 35,
);
Icon _empty = Icon(
  Icons.star_border,
  color: Colors.yellow,
  size: 35,
);

List list = [
  "assets/images/rasm.jpg",
  "assets/images/rasm2.jpg",
  "assets/images/rasm4.jpg",
  "assets/images/rasm4.jpg",
  "assets/images/rasm4.jpg",
  "assets/images/rasm5.png",
  "assets/images/rasm5.png",
  "assets/images/rasm5.png",
  "assets/images/rasm5.png",
];
int rd = Random().nextInt(9);

class _HomePageState extends State<HomePage> {
  bool fill = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: SideBar(),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text("Apple Products"),
                centerTitle: true,
                actions: [
                  SizedBox(
                    width: 12,
                  ),
                ],
                pinned: true,
                floating: true,
                backgroundColor: Colors.black,
                expandedHeight: 350,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Padding(
                    padding: const EdgeInsets.only(
                        top: 80, right: 20, left: 20, bottom: 10),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/rasm1.jpeg",
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, bottom: 20),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Lifestyle sale ",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Shop Now",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(list[index]), fit: BoxFit.cover),
                      ),

                      // color: Colors.teal[100 * (index % 9)],
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        fill = !fill;
                                      });
                                    },
                                    splashColor: Colors.black,
                                    icon: fill ? _fill : _empty),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: list.length,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1.0,
                ),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 40,
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10,),
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.grey.shade700,
                    ),
                    child: Center(

                        child: Text(
                      "7",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


