import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

List k1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
List k2 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
List k3 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
List c1 = [
  const Color(0xffBE5869),
  const Color(0xff991767),
];
List c2 = [
  const Color(0xffF15F79),
  const Color(0xffd12c92),
];

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Random r1 = Random();
    int k1 = r1.nextInt(10);
    int k2 = r1.nextInt(10);
    int k3 = r1.nextInt(10);
    int n1 = r1.nextInt(2);
    int n2 = r1.nextInt(2);
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ],
        title: const Text(
          "Lottery App",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: c1[n1],
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 100)),
          Container(
            height: 250,
            width: 430,
            color: c1[n1],
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 45)),
                Container(
                  height: 60,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: c2[n2],
                  ),
                  child: Center(
                      child: Text(
                    "$k1",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                const Padding(padding: EdgeInsets.only(left: 25)),
                Container(
                  height: 60,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: c2[n2],
                  ),
                  child: Center(
                      child: Text(
                    "$k2",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                const Padding(padding: EdgeInsets.only(left: 25)),
                Container(
                  height: 60,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: c2[n2],
                  ),
                  child: Center(
                      child: Text(
                    "$k3",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 150)),
          InkWell(
            onTap: () {
              setState(
                () {},
              );
            },
            child: Container(
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffBE5869), width: 5),
                  color: const Color(0xffEFEFBB)),
              child: const Center(
                  child: Text(
                "Get Lottery",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
