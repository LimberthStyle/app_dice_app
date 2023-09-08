import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dadoIzq = 6;
  int dadoDer = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8338ec),
      appBar: AppBar(
        title: const Text('Dice App'),
        backgroundColor: Color(0xff8338ec),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  dadoIzq = Random().nextInt(6) + 1;
                  dadoDer = Random().nextInt(6) + 1;
                  setState(() {});
                },
                child: Image.asset("assets/images/dice$dadoIzq.png"),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  dadoIzq = Random().nextInt(6) + 1;
                  dadoDer = Random().nextInt(6) + 1;
                  setState(() {});
                },
                child: Image.asset("assets/images/dice$dadoDer.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
