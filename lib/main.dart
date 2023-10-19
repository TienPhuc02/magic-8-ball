import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var initNumberBall = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Text("Ask Me Anything"),
        ),
        body: Container(
          color: Colors.blue,
          child: Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  initNumberBall = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset(
                'images/ball$initNumberBall.png',
                height: 200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
