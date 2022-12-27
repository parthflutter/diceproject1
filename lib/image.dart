import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List l1 = [
    "assets/images/dice1.png",
    "assets/images/dice2.png",
    "assets/images/dice3.png",
    "assets/images/dice4.png",
    "assets/images/dice5.png",
    "assets/images/dice6.png",
  ];

  int i=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dice App"),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent.shade200,
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              var rnd = Random();
              setState(() {
                i = rnd.nextInt(6);
              });
            },
            child: Image.asset(
              l1[i],
              height: 100,
              width: 100,
            ),
          ),
        ),
      ),
    );
  }
}
