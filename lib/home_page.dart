import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftSideCubic = 1;
  int rightSideCubic = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFE93B),
      appBar: AppBar(
        title: const Text(
          'Tapshyrma 5',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    leftSideCubic = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('assets/dice$leftSideCubic.png'),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    rightSideCubic = Random().nextInt(7);
                    if (rightSideCubic == 0) {
                      rightSideCubic = 1;
                    }
                  });
                },
                child: Image.asset('assets/dice$rightSideCubic.png'),
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
