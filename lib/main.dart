import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'dice game',
            style: TextStyle(fontSize: 40.0, color: Colors.amberAccent),
          ),
        ),
        body: const Moha(),
      ),
    );
  }
}

class Moha extends StatefulWidget {
  const Moha({super.key});

  @override
  State<Moha> createState() => _MohaState();
}

class _MohaState extends State<Moha> {
  int moha = 1;
  int you = 1;

  void random() {
    setState(() {
      you = Random().nextInt(6) + 1;
      moha = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      random();
                    });
                  },
                  child: Image.asset('images/dice$moha.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    random();
                  },
                  child: Image.asset('images/dice$you.png'),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'presse the dice',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
